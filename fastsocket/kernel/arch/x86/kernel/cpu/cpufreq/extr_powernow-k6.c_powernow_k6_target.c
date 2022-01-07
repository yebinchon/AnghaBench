
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int EINVAL ;
 int * clock_ratio ;
 scalar_t__ cpufreq_frequency_table_target (struct cpufreq_policy*,int *,unsigned int,unsigned int,unsigned int*) ;
 int powernow_k6_set_state (unsigned int) ;

__attribute__((used)) static int powernow_k6_target(struct cpufreq_policy *policy,
          unsigned int target_freq,
          unsigned int relation)
{
 unsigned int newstate = 0;

 if (cpufreq_frequency_table_target(policy, &clock_ratio[0],
    target_freq, relation, &newstate))
  return -EINVAL;

 powernow_k6_set_state(newstate);

 return 0;
}
