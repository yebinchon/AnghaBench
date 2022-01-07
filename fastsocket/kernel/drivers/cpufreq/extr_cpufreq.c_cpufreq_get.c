
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 unsigned int __cpufreq_get (unsigned int) ;
 struct cpufreq_policy* cpufreq_cpu_get (unsigned int) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 int lock_policy_rwsem_read (unsigned int) ;
 scalar_t__ unlikely (int ) ;
 int unlock_policy_rwsem_read (unsigned int) ;

unsigned int cpufreq_get(unsigned int cpu)
{
 unsigned int ret_freq = 0;
 struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);

 if (!policy)
  goto out;

 if (unlikely(lock_policy_rwsem_read(cpu)))
  goto out_policy;

 ret_freq = __cpufreq_get(cpu);

 unlock_policy_rwsem_read(cpu);

out_policy:
 cpufreq_cpu_put(policy);
out:
 return ret_freq;
}
