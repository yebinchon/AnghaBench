
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_idle () ;
 int need_resched () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int schedule () ;
 int tick_nohz_restart_sched_tick () ;
 int tick_nohz_stop_sched_tick (int) ;

void cpu_idle(void)
{
 for (;;) {
  tick_nohz_stop_sched_tick(1);
  while (!need_resched())
   default_idle();
  tick_nohz_restart_sched_tick();
  preempt_enable_no_resched();
  schedule();
  preempt_disable();
 }
}
