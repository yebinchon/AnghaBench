
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct cpuidle_device {int registered; } ;



 int LAPIC_TIMER_ALWAYS_RELIABLE ;
 int NOTIFY_OK ;
 int __setup_broadcast_timer ;
 int intel_idle_cpu_init (int) ;
 int intel_idle_cpuidle_devices ;
 int lapic_timer_reliable_states ;
 struct cpuidle_device* per_cpu_ptr (int ,int) ;
 int smp_call_function_single (int,int ,void*,int) ;

__attribute__((used)) static int cpu_hotplug_notify(struct notifier_block *n,
         unsigned long action, void *hcpu)
{
 int hotcpu = (unsigned long)hcpu;
 struct cpuidle_device *dev;

 switch (action & 0xf) {
 case 128:

  if (lapic_timer_reliable_states != LAPIC_TIMER_ALWAYS_RELIABLE)
   smp_call_function_single(hotcpu, __setup_broadcast_timer,
       (void *)1, 1);






  dev = per_cpu_ptr(intel_idle_cpuidle_devices, hotcpu);
  if (!dev->registered)
   intel_idle_cpu_init(hotcpu);

  break;
 }
 return NOTIFY_OK;
}
