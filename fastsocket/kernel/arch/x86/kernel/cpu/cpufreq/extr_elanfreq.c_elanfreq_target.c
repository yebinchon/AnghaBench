
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int EINVAL ;
 scalar_t__ cpufreq_frequency_table_target (struct cpufreq_policy*,int *,unsigned int,unsigned int,unsigned int*) ;
 int elanfreq_set_cpu_state (unsigned int) ;
 int * elanfreq_table ;

__attribute__((used)) static int elanfreq_target(struct cpufreq_policy *policy,
       unsigned int target_freq,
       unsigned int relation)
{
 unsigned int newstate = 0;

 if (cpufreq_frequency_table_target(policy, &elanfreq_table[0],
    target_freq, relation, &newstate))
  return -EINVAL;

 elanfreq_set_cpu_state(newstate);

 return 0;
}
