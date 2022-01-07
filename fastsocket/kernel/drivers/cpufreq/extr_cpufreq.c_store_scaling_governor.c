
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int governor; int policy; } ;
struct cpufreq_policy {int governor; TYPE_1__ user_policy; int policy; int cpu; } ;
typedef unsigned int ssize_t ;


 unsigned int EINVAL ;
 unsigned int __cpufreq_set_policy (struct cpufreq_policy*,struct cpufreq_policy*) ;
 unsigned int cpufreq_get_policy (struct cpufreq_policy*,int ) ;
 scalar_t__ cpufreq_parse_governor (char*,int *,int *) ;
 unsigned int sscanf (char const*,char*,char*) ;

__attribute__((used)) static ssize_t store_scaling_governor(struct cpufreq_policy *policy,
     const char *buf, size_t count)
{
 unsigned int ret = -EINVAL;
 char str_governor[16];
 struct cpufreq_policy new_policy;

 ret = cpufreq_get_policy(&new_policy, policy->cpu);
 if (ret)
  return ret;

 ret = sscanf(buf, "%15s", str_governor);
 if (ret != 1)
  return -EINVAL;

 if (cpufreq_parse_governor(str_governor, &new_policy.policy,
      &new_policy.governor))
  return -EINVAL;



 ret = __cpufreq_set_policy(policy, &new_policy);

 policy->user_policy.policy = policy->policy;
 policy->user_policy.governor = policy->governor;

 if (ret)
  return ret;
 else
  return count;
}
