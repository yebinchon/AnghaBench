
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_state {unsigned long long time; int usage; scalar_t__ (* enter ) (struct cpuidle_device*,struct cpuidle_state*) ;} ;
struct cpuidle_device {scalar_t__ last_residency; struct cpuidle_state* last_state; struct cpuidle_state* states; int enabled; } ;
struct TYPE_2__ {int (* select ) (struct cpuidle_device*) ;int (* reflect ) (struct cpuidle_device*) ;} ;


 struct cpuidle_device* __get_cpu_var (int ) ;
 TYPE_1__* cpuidle_curr_governor ;
 int cpuidle_devices ;
 int default_idle () ;
 int hrtimer_peek_ahead_timers () ;
 int local_irq_enable () ;
 scalar_t__ need_resched () ;
 int pm_idle_old () ;
 int smp_processor_id () ;
 int stub1 (struct cpuidle_device*) ;
 scalar_t__ stub2 (struct cpuidle_device*,struct cpuidle_state*) ;
 int stub3 (struct cpuidle_device*) ;
 int trace_power_end (int ) ;

__attribute__((used)) static void cpuidle_idle_call(void)
{
 struct cpuidle_device *dev = __get_cpu_var(cpuidle_devices);
 struct cpuidle_state *target_state;
 int next_state;


 if (!dev || !dev->enabled) {
  if (pm_idle_old)
   pm_idle_old();
  else



   local_irq_enable();

  return;
 }
 next_state = cpuidle_curr_governor->select(dev);
 if (need_resched()) {
  local_irq_enable();
  return;
 }

 target_state = &dev->states[next_state];


 dev->last_state = target_state;
 dev->last_residency = target_state->enter(dev, target_state);
 if (dev->last_state)
  target_state = dev->last_state;

 target_state->time += (unsigned long long)dev->last_residency;
 target_state->usage++;


 if (cpuidle_curr_governor->reflect)
  cpuidle_curr_governor->reflect(dev);
 trace_power_end(smp_processor_id());
}
