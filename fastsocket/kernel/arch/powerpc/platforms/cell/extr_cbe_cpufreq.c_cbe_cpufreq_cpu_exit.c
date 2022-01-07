
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;


 int cpufreq_frequency_table_put_attr (int ) ;

__attribute__((used)) static int cbe_cpufreq_cpu_exit(struct cpufreq_policy *policy)
{
 cpufreq_frequency_table_put_attr(policy->cpu);
 return 0;
}
