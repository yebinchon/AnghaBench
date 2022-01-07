
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_state {int dummy; } ;
struct cpuidle_device {int dummy; } ;
typedef int s64 ;
typedef int ktime_t ;
struct TYPE_2__ {int flags; } ;


 int CLOCK_EVT_NOTIFY_BROADCAST_ENTER ;
 int CLOCK_EVT_NOTIFY_BROADCAST_EXIT ;
 unsigned long MWAIT_CSTATE_MASK ;
 unsigned long MWAIT_SUBSTATE_SIZE ;
 int POWER_CSTATE ;
 int __monitor (void*,int ,int ) ;
 int __mwait (unsigned long,unsigned long) ;
 int clockevents_notify (int ,int*) ;
 scalar_t__ cpuidle_get_statedata (struct cpuidle_state*) ;
 TYPE_1__* current_thread_info () ;
 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int lapic_timer_reliable_states ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int smp_mb () ;
 int smp_processor_id () ;
 int start_critical_timings () ;
 int stop_critical_timings () ;
 int trace_power_start (int ,unsigned long,int) ;

__attribute__((used)) static int intel_idle(struct cpuidle_device *dev, struct cpuidle_state *state)
{
 unsigned long ecx = 1;
 unsigned long eax = (unsigned long)cpuidle_get_statedata(state);
 unsigned int cstate;
 ktime_t kt_before, kt_after;
 s64 usec_delta;
 int cpu = smp_processor_id();

 cstate = (((eax) >> MWAIT_SUBSTATE_SIZE) & MWAIT_CSTATE_MASK) + 1;

 local_irq_disable();

 if (!(lapic_timer_reliable_states & (1 << (cstate))))
  clockevents_notify(CLOCK_EVT_NOTIFY_BROADCAST_ENTER, &cpu);

 kt_before = ktime_get_real();

 stop_critical_timings();

 trace_power_start(POWER_CSTATE, (eax >> 4) + 1, cpu);

 if (!need_resched()) {

  __monitor((void *)&current_thread_info()->flags, 0, 0);
  smp_mb();
  if (!need_resched())
   __mwait(eax, ecx);
 }

 start_critical_timings();

 kt_after = ktime_get_real();
 usec_delta = ktime_to_us(ktime_sub(kt_after, kt_before));

 local_irq_enable();

 if (!(lapic_timer_reliable_states & (1 << (cstate))))
  clockevents_notify(CLOCK_EVT_NOTIFY_BROADCAST_EXIT, &cpu);

 return usec_delta;
}
