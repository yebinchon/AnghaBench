
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_POLLING_NRFLAG ;
 int clear_thread_flag (int ) ;
 int cpu_relax () ;
 int cpu_sleep () ;
 int hlt_counter ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int set_thread_flag (int ) ;
 int smp_mb__after_clear_bit () ;

void default_idle(void)
{
 if (!hlt_counter) {
  clear_thread_flag(TIF_POLLING_NRFLAG);
  smp_mb__after_clear_bit();
  local_irq_disable();
  while (!need_resched())
   cpu_sleep();
  local_irq_enable();
  set_thread_flag(TIF_POLLING_NRFLAG);
 } else
  while (!need_resched())
   cpu_relax();
}
