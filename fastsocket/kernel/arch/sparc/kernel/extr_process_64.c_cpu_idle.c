
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_POLLING_NRFLAG ;
 scalar_t__ cpu_is_offline (int) ;
 int cpu_play_dead () ;
 int need_resched () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int schedule () ;
 int set_thread_flag (int ) ;
 int smp_processor_id () ;
 int sparc64_yield (int) ;
 int tick_nohz_restart_sched_tick () ;
 int tick_nohz_stop_sched_tick (int) ;

void cpu_idle(void)
{
 int cpu = smp_processor_id();

 set_thread_flag(TIF_POLLING_NRFLAG);

 while(1) {
  tick_nohz_stop_sched_tick(1);

  while (!need_resched() && !cpu_is_offline(cpu))
   sparc64_yield(cpu);

  tick_nohz_restart_sched_tick();

  preempt_enable_no_resched();






  schedule();
  preempt_disable();
 }
}
