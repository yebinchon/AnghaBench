
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_TSC ;
 int PR_TSC_ENABLE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 scalar_t__ prctl (int ,int ) ;
 int rdtsc () ;
 scalar_t__ should_segv ;
 int stderr ;

void sigsegv_cb(int sig)
{
 if (!should_segv)
 {
  fprintf(stderr, "FATAL ERROR, rdtsc() failed while enabled\n");
  exit(0);
 }
 if (prctl(PR_SET_TSC, PR_TSC_ENABLE) < 0)
 {
  perror("prctl");
  exit(0);
 }
 should_segv = 0;

 rdtsc();
}
