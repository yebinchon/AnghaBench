
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* appname ;
 int exit (int) ;
 int fclose (int *) ;
 int fprintf (int ,char*,char const*,...) ;
 int * listfile ;
 char* listfilename ;
 int * ofile ;
 char* ofilename ;
 int patch_functions ;
 int * regfile ;
 char* regfilename ;
 int stderr ;
 int symlist_free (int *) ;
 int symtable_close () ;
 int unlink (char*) ;
 char* yyfilename ;
 int yylineno ;

void
stop(const char *string, int err_code)
{
 if (string != ((void*)0)) {
  fprintf(stderr, "%s: ", appname);
  if (yyfilename != ((void*)0)) {
   fprintf(stderr, "Stopped at file %s, line %d - ",
    yyfilename, yylineno);
  }
  fprintf(stderr, "%s\n", string);
 }

 if (ofile != ((void*)0)) {
  fclose(ofile);
  if (err_code != 0) {
   fprintf(stderr, "%s: Removing %s due to error\n",
    appname, ofilename);
   unlink(ofilename);
  }
 }

 if (regfile != ((void*)0)) {
  fclose(regfile);
  if (err_code != 0) {
   fprintf(stderr, "%s: Removing %s due to error\n",
    appname, regfilename);
   unlink(regfilename);
  }
 }

 if (listfile != ((void*)0)) {
  fclose(listfile);
  if (err_code != 0) {
   fprintf(stderr, "%s: Removing %s due to error\n",
    appname, listfilename);
   unlink(listfilename);
  }
 }

 symlist_free(&patch_functions);
 symtable_close();

 exit(err_code);
}
