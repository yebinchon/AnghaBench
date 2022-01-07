
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {unsigned int cur; int update; } ;
struct TYPE_2__ {unsigned int (* get ) (unsigned int) ;int flags; } ;


 int CPUFREQ_CONST_LOOPS ;
 int cpufreq_cpu_data ;
 TYPE_1__* cpufreq_driver ;
 int cpufreq_out_of_sync (unsigned int,unsigned int,unsigned int) ;
 struct cpufreq_policy* per_cpu (int ,unsigned int) ;
 int schedule_work (int *) ;
 unsigned int stub1 (unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int __cpufreq_get(unsigned int cpu)
{
 struct cpufreq_policy *policy = per_cpu(cpufreq_cpu_data, cpu);
 unsigned int ret_freq = 0;

 if (!cpufreq_driver->get)
  return ret_freq;

 ret_freq = cpufreq_driver->get(cpu);

 if (ret_freq && policy->cur &&
  !(cpufreq_driver->flags & CPUFREQ_CONST_LOOPS)) {


  if (unlikely(ret_freq != policy->cur)) {
   cpufreq_out_of_sync(cpu, policy->cur, ret_freq);
   schedule_work(&policy->update);
  }
 }

 return ret_freq;
}
