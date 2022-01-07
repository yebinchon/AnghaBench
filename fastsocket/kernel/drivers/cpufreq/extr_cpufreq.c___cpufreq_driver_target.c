
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int cpu; } ;
struct TYPE_2__ {int (* target ) (struct cpufreq_policy*,unsigned int,unsigned int) ;} ;


 int EINVAL ;
 scalar_t__ cpu_online (int ) ;
 TYPE_1__* cpufreq_driver ;
 int dprintk (char*,int ,unsigned int,unsigned int) ;
 int stub1 (struct cpufreq_policy*,unsigned int,unsigned int) ;

int __cpufreq_driver_target(struct cpufreq_policy *policy,
       unsigned int target_freq,
       unsigned int relation)
{
 int retval = -EINVAL;

 dprintk("target for CPU %u: %u kHz, relation %u\n", policy->cpu,
  target_freq, relation);
 if (cpu_online(policy->cpu) && cpufreq_driver->target)
  retval = cpufreq_driver->target(policy, target_freq, relation);

 return retval;
}
