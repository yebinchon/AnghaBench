
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_runstate_info {size_t state; unsigned long long state_entry_time; unsigned long long* time; } ;


 size_t RUNSTATE_blocked ;
 size_t RUNSTATE_running ;
 int WARN_ON (int) ;
 int get_runstate_snapshot (struct vcpu_runstate_info*) ;
 unsigned long long ia64_native_sched_clock () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static unsigned long long xen_sched_clock(void)
{
 struct vcpu_runstate_info runstate;

 unsigned long long now;
 unsigned long long offset;
 unsigned long long ret;






 preempt_disable();





 now = ia64_native_sched_clock();

 get_runstate_snapshot(&runstate);

 WARN_ON(runstate.state != RUNSTATE_running);

 offset = 0;
 if (now > runstate.state_entry_time)
  offset = now - runstate.state_entry_time;
 ret = runstate.time[RUNSTATE_blocked] +
  runstate.time[RUNSTATE_running] +
  offset;

 preempt_enable();

 return ret;
}
