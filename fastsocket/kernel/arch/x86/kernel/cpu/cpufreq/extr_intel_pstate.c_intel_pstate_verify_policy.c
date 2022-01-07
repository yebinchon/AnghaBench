
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; int min_freq; } ;
struct cpufreq_policy {scalar_t__ policy; TYPE_1__ cpuinfo; } ;


 scalar_t__ CPUFREQ_POLICY_PERFORMANCE ;
 scalar_t__ CPUFREQ_POLICY_POWERSAVE ;
 int EINVAL ;
 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;

__attribute__((used)) static int intel_pstate_verify_policy(struct cpufreq_policy *policy)
{
 cpufreq_verify_within_limits(policy,
    policy->cpuinfo.min_freq,
    policy->cpuinfo.max_freq);

 if ((policy->policy != CPUFREQ_POLICY_POWERSAVE) &&
  (policy->policy != CPUFREQ_POLICY_PERFORMANCE))
  return -EINVAL;

 return 0;
}
