
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 char* appname ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{

 (void)fprintf(stderr,
"usage: %-16s [-nostdinc] [-I-] [-I directory] [-o output_file]\n"
"	[-r register_output_file [-p register_diag_file -i includefile]]\n"
"	[-l program_list_file]\n"
"	input_file\n", appname);
 exit(EX_USAGE);
}
