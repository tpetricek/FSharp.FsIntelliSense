FSC = fsharpc

FILES = \
	src/Common.fs \
	src/CompilerLocationUtils.fs \
	src/FSharpCompiler.fs \
	src/Parser.fs \
	src/TipFormatter.fs \
	src/Program.fs

OPTIONS = \
	--resident --debug --out:bin/fsintellisense.exe

all: bin/fsintellisense.exe

bin/fsintellisense.exe: $(FILES) 
	@-mkdir -p bin
	$(FSC) $(OPTIONS) $(FILES) 

