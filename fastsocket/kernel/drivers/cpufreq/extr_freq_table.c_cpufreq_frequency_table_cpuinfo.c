
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int min_freq; unsigned int max_freq; } ;
struct cpufreq_policy {unsigned int min; unsigned int max; TYPE_1__ cpuinfo; } ;
struct cpufreq_frequency_table {unsigned int frequency; int index; } ;


 unsigned int CPUFREQ_ENTRY_INVALID ;
 unsigned int CPUFREQ_TABLE_END ;
 int EINVAL ;
 int dprintk (char*,unsigned int,...) ;

int cpufreq_frequency_table_cpuinfo(struct cpufreq_policy *policy,
        struct cpufreq_frequency_table *table)
{
 unsigned int min_freq = ~0;
 unsigned int max_freq = 0;
 unsigned int i;

 for (i = 0; (table[i].frequency != CPUFREQ_TABLE_END); i++) {
  unsigned int freq = table[i].frequency;
  if (freq == CPUFREQ_ENTRY_INVALID) {
   dprintk("table entry %u is invalid, skipping\n", i);

   continue;
  }
  dprintk("table entry %u: %u kHz, %u index\n",
     i, freq, table[i].index);
  if (freq < min_freq)
   min_freq = freq;
  if (freq > max_freq)
   max_freq = freq;
 }

 policy->min = policy->cpuinfo.min_freq = min_freq;
 policy->max = policy->cpuinfo.max_freq = max_freq;

 if (policy->min == ~0)
  return -EINVAL;
 else
  return 0;
}
