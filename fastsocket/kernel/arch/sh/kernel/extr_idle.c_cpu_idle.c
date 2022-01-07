
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_POLLING_NRFLAG ;
 int check_pgt_cache () ;
 void default_idle () ;
 int need_resched () ;
 void pm_idle () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int schedule () ;
 int set_thread_flag (int ) ;
 int tick_nohz_restart_sched_tick () ;
 int tick_nohz_stop_sched_tick (int) ;

void cpu_idle(void)
{
 set_thread_flag(TIF_POLLING_NRFLAG);


 while (1) {
  void (*idle)(void) = pm_idle;

  if (!idle)
   idle = default_idle;

  tick_nohz_stop_sched_tick(1);
  while (!need_resched())
   idle();
  tick_nohz_restart_sched_tick();

  preempt_enable_no_resched();
  schedule();
  preempt_disable();
  check_pgt_cache();
 }
}
