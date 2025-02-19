
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HMT_low () ;
 int HMT_medium () ;
 int TIF_POLLING_NRFLAG ;
 scalar_t__ hvlpevent_is_pending () ;
 int need_resched () ;
 int ppc64_runlatch_off () ;
 int ppc64_runlatch_on () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int process_iSeries_events () ;
 int schedule () ;
 int set_thread_flag (int ) ;
 int tick_nohz_restart_sched_tick () ;
 int tick_nohz_stop_sched_tick (int) ;

__attribute__((used)) static void iseries_dedicated_idle(void)
{
 set_thread_flag(TIF_POLLING_NRFLAG);

 while (1) {
  tick_nohz_stop_sched_tick(1);
  if (!need_resched()) {
   while (!need_resched()) {
    ppc64_runlatch_off();
    HMT_low();

    if (hvlpevent_is_pending()) {
     HMT_medium();
     ppc64_runlatch_on();
     process_iSeries_events();
    }
   }

   HMT_medium();
  }

  ppc64_runlatch_on();
  tick_nohz_restart_sched_tick();
  preempt_enable_no_resched();
  schedule();
  preempt_disable();
 }
}
