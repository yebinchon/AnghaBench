
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {int max_state; unsigned int* freq_table; } ;



__attribute__((used)) static int freq_table_get_index(struct cpufreq_stats *stat, unsigned int freq)
{
 int index;
 for (index = 0; index < stat->max_state; index++)
  if (stat->freq_table[index] == freq)
   return index;
 return -1;
}
