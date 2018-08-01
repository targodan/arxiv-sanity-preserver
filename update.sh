#!/bin/bash

py=python3

if [[ "$1" != "" ]]; then
    $py fetch_papers.py --start-index "$1"
else
    $py fetch_papers.py
fi
$py download_pdfs.py
$py parse_pdf_to_text.py
$py thumb_pdf.py
$py analyze.py
$py buildsvm.py
$py make_cache.py
