
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_TSC ;
 int PR_TSC_ENABLE ;
 int SIGSEGV ;
 int alarm (int) ;
 int exit (int ) ;
 int perror (char*) ;
 scalar_t__ prctl (int ,int ) ;
 int rdtsc () ;
 int signal (int ,int ) ;
 int sigsegv_fail ;

void rdtsctask(void)
{
 if (prctl(PR_SET_TSC, PR_TSC_ENABLE) < 0)
 {
  perror("prctl");
  exit(0);
 }
 signal(SIGSEGV, sigsegv_fail);
 alarm(10);
 for(;;) rdtsc();
}
