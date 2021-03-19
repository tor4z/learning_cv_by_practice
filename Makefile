PIP            := pip
PYTHON         := python
REQUIREMENTS   := requirements.txt
LAB_PORT       := 8888
APP_DIR        := $(shell pwd)


.PHONY: dep lab clean


dep: $(REQUIREMENTS)
	$(PIP) install -r $^


lab:
	nohup jupyter lab --port $(LAB_PORT) --notebook-dir=$(APP_DIR) &


clean:
	-rm -rf ./**/*.pyc ./**/.tox ./**/.ipynb_checkpoints ./**/__pycache__ *.out
