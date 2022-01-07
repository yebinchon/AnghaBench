
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int cpu; } ;
struct TYPE_2__ {int (* getavg ) (struct cpufreq_policy*,unsigned int) ;} ;


 int EINVAL ;
 scalar_t__ cpu_online (unsigned int) ;
 struct cpufreq_policy* cpufreq_cpu_get (int ) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 TYPE_1__* cpufreq_driver ;
 int stub1 (struct cpufreq_policy*,unsigned int) ;

int __cpufreq_driver_getavg(struct cpufreq_policy *policy, unsigned int cpu)
{
 int ret = 0;

 policy = cpufreq_cpu_get(policy->cpu);
 if (!policy)
  return -EINVAL;

 if (cpu_online(cpu) && cpufreq_driver->getavg)
  ret = cpufreq_driver->getavg(policy, cpu);

 cpufreq_cpu_put(policy);
 return ret;
}
