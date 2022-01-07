
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {size_t cpu; } ;
struct TYPE_2__ {int * table; } ;


 int EINVAL ;
 scalar_t__ cpufreq_frequency_table_target (struct cpufreq_policy*,int *,unsigned int,unsigned int,unsigned int*) ;
 TYPE_1__* us3_freq_table ;
 int us3_set_cpu_divider_index (size_t,unsigned int) ;

__attribute__((used)) static int us3_freq_target(struct cpufreq_policy *policy,
     unsigned int target_freq,
     unsigned int relation)
{
 unsigned int new_index = 0;

 if (cpufreq_frequency_table_target(policy,
        &us3_freq_table[policy->cpu].table[0],
        target_freq,
        relation,
        &new_index))
  return -EINVAL;

 us3_set_cpu_divider_index(policy->cpu, new_index);

 return 0;
}
