
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int fprintf (int ,char const*) ;
 int stderr ;
 int unlink (char const*) ;

__attribute__((used)) static void death(const char *msg, FILE *fdesc, const char *fname)
{
 fprintf(stderr, msg);
 fclose(fdesc);
 unlink(fname);
 exit(1);
}
