
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; int min_freq; } ;
struct cpufreq_policy {int max; unsigned int min; TYPE_1__ cpuinfo; } ;


 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;
 int fid ;

__attribute__((used)) static int nforce2_verify(struct cpufreq_policy *policy)
{
 unsigned int fsb_pol_max;

 fsb_pol_max = policy->max / (fid * 100);

 if (policy->min < (fsb_pol_max * fid * 100))
  policy->max = (fsb_pol_max + 1) * fid * 100;

 cpufreq_verify_within_limits(policy,
         policy->cpuinfo.min_freq,
         policy->cpuinfo.max_freq);
 return 0;
}
