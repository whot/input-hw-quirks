OUTPUT_DIR = build

all: html

html: *.adoc
	asciidoctor -a toc -d book -D $(OUTPUT_DIR) -b html5 $^

clean:
	rm -f $(OUTPUT_DIR)/*.html
