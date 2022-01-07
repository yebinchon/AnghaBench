
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; int min_freq; } ;
struct cpufreq_policy {scalar_t__ cpu; TYPE_1__ cpuinfo; } ;


 int EINVAL ;
 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;

__attribute__((used)) static int at32_verify_speed(struct cpufreq_policy *policy)
{
 if (policy->cpu != 0)
  return -EINVAL;

 cpufreq_verify_within_limits(policy, policy->cpuinfo.min_freq,
   policy->cpuinfo.max_freq);
 return 0;
}
