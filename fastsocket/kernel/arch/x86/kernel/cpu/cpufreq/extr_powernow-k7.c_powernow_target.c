
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int EINVAL ;
 int change_speed (unsigned int) ;
 scalar_t__ cpufreq_frequency_table_target (struct cpufreq_policy*,int ,unsigned int,unsigned int,unsigned int*) ;
 int powernow_table ;

__attribute__((used)) static int powernow_target(struct cpufreq_policy *policy,
       unsigned int target_freq,
       unsigned int relation)
{
 unsigned int newstate;

 if (cpufreq_frequency_table_target(policy, powernow_table, target_freq,
    relation, &newstate))
  return -EINVAL;

 change_speed(newstate);

 return 0;
}
