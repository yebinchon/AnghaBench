
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_POLLING_NRFLAG ;
 int clear_bl_bit () ;
 int clear_thread_flag (int ) ;
 int cpu_relax () ;
 int cpu_sleep () ;
 int hlt_counter ;
 int need_resched () ;
 int set_bl_bit () ;
 int set_thread_flag (int ) ;
 int smp_mb__after_clear_bit () ;
 int start_critical_timings () ;
 int stop_critical_timings () ;

void default_idle(void)
{
 if (!hlt_counter) {
  clear_thread_flag(TIF_POLLING_NRFLAG);
  smp_mb__after_clear_bit();
  set_bl_bit();
  stop_critical_timings();

  while (!need_resched())
   cpu_sleep();

  start_critical_timings();
  clear_bl_bit();
  set_thread_flag(TIF_POLLING_NRFLAG);
 } else
  while (!need_resched())
   cpu_relax();
}
