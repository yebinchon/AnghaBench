
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long disable_timer () ;
 int idle_sleep (unsigned long long) ;
 scalar_t__ need_resched () ;
 int schedule () ;
 int tick_nohz_restart_sched_tick () ;
 int tick_nohz_stop_sched_tick (int) ;

void default_idle(void)
{
 unsigned long long nsecs;

 while (1) {






  if (need_resched())
   schedule();

  tick_nohz_stop_sched_tick(1);
  nsecs = disable_timer();
  idle_sleep(nsecs);
  tick_nohz_restart_sched_tick();
 }
}
