
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct cpufreq_policy {unsigned int cpu; } ;
struct cpufreq_frequency_table {int dummy; } ;


 unsigned long CPUFREQ_NOTIFY ;
 struct cpufreq_frequency_table* cpufreq_frequency_get_table (unsigned int) ;
 int cpufreq_stats_create_table (struct cpufreq_policy*,struct cpufreq_frequency_table*) ;

__attribute__((used)) static int cpufreq_stat_notifier_policy(struct notifier_block *nb,
  unsigned long val, void *data)
{
 int ret;
 struct cpufreq_policy *policy = data;
 struct cpufreq_frequency_table *table;
 unsigned int cpu = policy->cpu;
 if (val != CPUFREQ_NOTIFY)
  return 0;
 table = cpufreq_frequency_get_table(cpu);
 if (!table)
  return 0;
 ret = cpufreq_stats_create_table(policy, table);
 if (ret)
  return ret;
 return 0;
}
