
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int cpu; } ;
struct cpufreq_frequency_table {scalar_t__ frequency; } ;
typedef size_t ssize_t ;


 scalar_t__ CPUFREQ_ENTRY_INVALID ;
 scalar_t__ CPUFREQ_TABLE_END ;
 size_t ENODEV ;
 struct cpufreq_frequency_table* per_cpu (int ,unsigned int) ;
 int show_table ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_available_freqs(struct cpufreq_policy *policy, char *buf)
{
 unsigned int i = 0;
 unsigned int cpu = policy->cpu;
 ssize_t count = 0;
 struct cpufreq_frequency_table *table;

 if (!per_cpu(show_table, cpu))
  return -ENODEV;

 table = per_cpu(show_table, cpu);

 for (i = 0; (table[i].frequency != CPUFREQ_TABLE_END); i++) {
  if (table[i].frequency == CPUFREQ_ENTRY_INVALID)
   continue;
  count += sprintf(&buf[count], "%d ", table[i].frequency);
 }
 count += sprintf(&buf[count], "\n");

 return count;

}
