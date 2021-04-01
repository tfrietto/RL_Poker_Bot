#!/usr/bin/env bash

isort .
black .
flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
flake8 . --count --exit-zero --max-complexity=10 --max-line-length=88 --statistics
mypy . --config-file=mypy.ini
pytest --cov clubs_gym/ --cov-report html test/