
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;


 int cpufreq_frequency_table_put_attr (int ) ;
 unsigned int max_multiplier ;
 int powernow_k6_set_state (unsigned int) ;

__attribute__((used)) static int powernow_k6_cpu_exit(struct cpufreq_policy *policy)
{
 unsigned int i;
 for (i = 0; i < 8; i++) {
  if (i == max_multiplier)
   powernow_k6_set_state(i);
 }
 cpufreq_frequency_table_put_attr(policy->cpu);
 return 0;
}
