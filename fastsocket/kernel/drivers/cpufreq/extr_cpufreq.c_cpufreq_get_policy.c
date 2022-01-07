
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int EINVAL ;
 struct cpufreq_policy* cpufreq_cpu_get (unsigned int) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 int memcpy (struct cpufreq_policy*,struct cpufreq_policy*,int) ;

int cpufreq_get_policy(struct cpufreq_policy *policy, unsigned int cpu)
{
 struct cpufreq_policy *cpu_policy;
 if (!policy)
  return -EINVAL;

 cpu_policy = cpufreq_cpu_get(cpu);
 if (!cpu_policy)
  return -EINVAL;

 memcpy(policy, cpu_policy, sizeof(struct cpufreq_policy));

 cpufreq_cpu_put(cpu_policy);
 return 0;
}
