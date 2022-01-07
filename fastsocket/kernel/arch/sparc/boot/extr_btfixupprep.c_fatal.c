
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* buffer ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void fatal(void)
{
 fprintf(stderr, "Malformed output from objdump\n%s\n", buffer);
 exit(1);
}
