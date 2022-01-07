
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int TS_POLLING ;
 int __exit_idle () ;
 int boot_init_stack_canary () ;
 scalar_t__ cpu_is_offline (int ) ;
 TYPE_1__* current_thread_info () ;
 int enter_idle () ;
 int local_irq_disable () ;
 int need_resched () ;
 int play_dead () ;
 int pm_idle () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int rmb () ;
 int schedule () ;
 int smp_processor_id () ;
 int start_critical_timings () ;
 int stop_critical_timings () ;
 int tick_nohz_restart_sched_tick () ;
 int tick_nohz_stop_sched_tick (int) ;

void cpu_idle(void)
{
 current_thread_info()->status |= TS_POLLING;
 boot_init_stack_canary();


 while (1) {
  tick_nohz_stop_sched_tick(1);
  while (!need_resched()) {

   rmb();

   if (cpu_is_offline(smp_processor_id()))
    play_dead();





   local_irq_disable();
   enter_idle();

   stop_critical_timings();
   pm_idle();
   start_critical_timings();



   __exit_idle();
  }

  tick_nohz_restart_sched_tick();
  preempt_enable_no_resched();
  schedule();
  preempt_disable();
 }
}
