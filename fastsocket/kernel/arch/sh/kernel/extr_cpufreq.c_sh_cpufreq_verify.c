
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; int min_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; } ;


 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;

__attribute__((used)) static int sh_cpufreq_verify(struct cpufreq_policy *policy)
{
 cpufreq_verify_within_limits(policy, policy->cpuinfo.min_freq,
         policy->cpuinfo.max_freq);
 return 0;
}
