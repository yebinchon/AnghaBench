
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*) ;
 int stderr ;
 int task () ;
 int wait (int *) ;

int main(int argc, char **argv)
{
 int n_tasks = 100, i;

 fprintf(stderr, "[No further output means we're allright]\n");

 for (i=0; i<n_tasks; i++)
  if (fork() == 0)
   task();

 for (i=0; i<n_tasks; i++)
  wait(((void*)0));

 exit(0);
}
