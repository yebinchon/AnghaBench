
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_die () ;
 scalar_t__ cpu_is_offline (int ) ;
 void default_idle () ;
 int need_resched () ;
 void pm_idle () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int schedule () ;
 int smp_processor_id () ;
 int tick_nohz_restart_sched_tick () ;
 int tick_nohz_stop_sched_tick (int) ;

void cpu_idle(void)
{

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
 }
}
