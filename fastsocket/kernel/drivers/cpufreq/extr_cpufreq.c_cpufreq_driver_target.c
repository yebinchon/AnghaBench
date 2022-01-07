
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;


 int EINVAL ;
 int __cpufreq_driver_target (struct cpufreq_policy*,unsigned int,unsigned int) ;
 struct cpufreq_policy* cpufreq_cpu_get (int ) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 int lock_policy_rwsem_write (int ) ;
 scalar_t__ unlikely (int ) ;
 int unlock_policy_rwsem_write (int ) ;

int cpufreq_driver_target(struct cpufreq_policy *policy,
     unsigned int target_freq,
     unsigned int relation)
{
 int ret = -EINVAL;

 policy = cpufreq_cpu_get(policy->cpu);
 if (!policy)
  goto no_policy;

 if (unlikely(lock_policy_rwsem_write(policy->cpu)))
  goto fail;

 ret = __cpufreq_driver_target(policy, target_freq, relation);

 unlock_policy_rwsem_write(policy->cpu);

fail:
 cpufreq_cpu_put(policy);
no_policy:
 return ret;
}
