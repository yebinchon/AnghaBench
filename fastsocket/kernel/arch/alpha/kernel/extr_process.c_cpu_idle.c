
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_POLLING_NRFLAG ;
 int cpu_relax () ;
 int need_resched () ;
 int schedule () ;
 int set_thread_flag (int ) ;

void
cpu_idle(void)
{
 set_thread_flag(TIF_POLLING_NRFLAG);

 while (1) {



  while (!need_resched())
   cpu_relax();
  schedule();
 }
}
