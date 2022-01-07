
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; int min_freq; } ;
struct cpufreq_policy {int min; int max; TYPE_1__ cpuinfo; scalar_t__ cpu; } ;


 int EINVAL ;
 int clk_round_rate (int ,int) ;
 int cpufreq_frequency_table_verify (struct cpufreq_policy*,scalar_t__) ;
 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;
 scalar_t__ freq_table ;
 int mpu_clk ;

int omap_verify_speed(struct cpufreq_policy *policy)
{
 if (freq_table)
  return cpufreq_frequency_table_verify(policy, freq_table);

 if (policy->cpu)
  return -EINVAL;

 cpufreq_verify_within_limits(policy, policy->cpuinfo.min_freq,
         policy->cpuinfo.max_freq);

 policy->min = clk_round_rate(mpu_clk, policy->min * 1000) / 1000;
 policy->max = clk_round_rate(mpu_clk, policy->max * 1000) / 1000;
 cpufreq_verify_within_limits(policy, policy->cpuinfo.min_freq,
         policy->cpuinfo.max_freq);
 return 0;
}
