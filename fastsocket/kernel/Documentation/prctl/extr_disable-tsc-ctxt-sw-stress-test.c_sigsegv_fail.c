
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void sigsegv_fail(int sig)
{
 fprintf(stderr, "FATAL ERROR, rdtsc() failed while enabled\n");
 exit(0);
}
