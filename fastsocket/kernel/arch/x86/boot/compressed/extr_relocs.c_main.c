
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int die (char*,char const*,int ) ;
 int emit_relocs (int) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int print_absolute_relocs () ;
 int print_absolute_symbols () ;
 int read_ehdr (int *) ;
 int read_relocs (int *) ;
 int read_shdrs (int *) ;
 int read_strtabs (int *) ;
 int read_symtabs (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;
 int usage () ;

int main(int argc, char **argv)
{
 int show_absolute_syms, show_absolute_relocs;
 int as_text;
 const char *fname;
 FILE *fp;
 int i;

 show_absolute_syms = 0;
 show_absolute_relocs = 0;
 as_text = 0;
 fname = ((void*)0);
 for (i = 1; i < argc; i++) {
  char *arg = argv[i];
  if (*arg == '-') {
   if (strcmp(argv[1], "--abs-syms") == 0) {
    show_absolute_syms = 1;
    continue;
   }

   if (strcmp(argv[1], "--abs-relocs") == 0) {
    show_absolute_relocs = 1;
    continue;
   }
   else if (strcmp(argv[1], "--text") == 0) {
    as_text = 1;
    continue;
   }
  }
  else if (!fname) {
   fname = arg;
   continue;
  }
  usage();
 }
 if (!fname) {
  usage();
 }
 fp = fopen(fname, "r");
 if (!fp) {
  die("Cannot open %s: %s\n",
   fname, strerror(errno));
 }
 read_ehdr(fp);
 read_shdrs(fp);
 read_strtabs(fp);
 read_symtabs(fp);
 read_relocs(fp);
 if (show_absolute_syms) {
  print_absolute_symbols();
  return 0;
 }
 if (show_absolute_relocs) {
  print_absolute_relocs();
  return 0;
 }
 emit_relocs(as_text);
 return 0;
}
