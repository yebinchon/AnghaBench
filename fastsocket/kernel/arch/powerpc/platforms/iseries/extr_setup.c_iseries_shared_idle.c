
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HMT_medium () ;
 scalar_t__ hvlpevent_is_pending () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int ppc64_runlatch_off () ;
 int ppc64_runlatch_on () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int process_iSeries_events () ;
 int schedule () ;
 int tick_nohz_restart_sched_tick () ;
 int tick_nohz_stop_sched_tick (int) ;
 int yield_shared_processor () ;

__attribute__((used)) static void iseries_shared_idle(void)
{
 while (1) {
  tick_nohz_stop_sched_tick(1);
  while (!need_resched() && !hvlpevent_is_pending()) {
   local_irq_disable();
   ppc64_runlatch_off();


   if (!need_resched() && !hvlpevent_is_pending())
    yield_shared_processor();

   HMT_medium();
   local_irq_enable();
  }

  ppc64_runlatch_on();
  tick_nohz_restart_sched_tick();

  if (hvlpevent_is_pending())
   process_iSeries_events();

  preempt_enable_no_resched();
  schedule();
  preempt_disable();
 }
}
