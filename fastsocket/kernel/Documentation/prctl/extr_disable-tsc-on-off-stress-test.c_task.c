
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_TSC ;
 int PR_TSC_SIGSEGV ;
 int SIGSEGV ;
 int alarm (int) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 scalar_t__ prctl (int ,int ) ;
 int rdtsc () ;
 int should_segv ;
 int signal (int ,int ) ;
 int sigsegv_cb ;
 int stderr ;

void task(void)
{
 signal(SIGSEGV, sigsegv_cb);
 alarm(10);
 for(;;)
 {
  rdtsc();
  if (should_segv)
  {
   fprintf(stderr, "FATAL ERROR, rdtsc() succeeded while disabled\n");
   exit(0);
  }
  if (prctl(PR_SET_TSC, PR_TSC_SIGSEGV) < 0)
  {
   perror("prctl");
   exit(0);
  }
  should_segv = 1;
 }
}
