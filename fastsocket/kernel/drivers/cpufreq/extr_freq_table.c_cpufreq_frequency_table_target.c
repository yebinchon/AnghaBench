
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int cpu; unsigned int min; unsigned int max; } ;
struct cpufreq_frequency_table {unsigned int index; unsigned int frequency; } ;


 unsigned int CPUFREQ_ENTRY_INVALID ;


 unsigned int CPUFREQ_TABLE_END ;
 int EINVAL ;
 int cpu_online (unsigned int) ;
 int dprintk (char*,unsigned int,unsigned int,unsigned int) ;

int cpufreq_frequency_table_target(struct cpufreq_policy *policy,
       struct cpufreq_frequency_table *table,
       unsigned int target_freq,
       unsigned int relation,
       unsigned int *index)
{
 struct cpufreq_frequency_table optimal = {
  .index = ~0,
  .frequency = 0,
 };
 struct cpufreq_frequency_table suboptimal = {
  .index = ~0,
  .frequency = 0,
 };
 unsigned int i;

 dprintk("request for target %u kHz (relation: %u) for cpu %u\n",
     target_freq, relation, policy->cpu);

 switch (relation) {
 case 129:
  suboptimal.frequency = ~0;
  break;
 case 128:
  optimal.frequency = ~0;
  break;
 }

 if (!cpu_online(policy->cpu))
  return -EINVAL;

 for (i = 0; (table[i].frequency != CPUFREQ_TABLE_END); i++) {
  unsigned int freq = table[i].frequency;
  if (freq == CPUFREQ_ENTRY_INVALID)
   continue;
  if ((freq < policy->min) || (freq > policy->max))
   continue;
  switch (relation) {
  case 129:
   if (freq <= target_freq) {
    if (freq >= optimal.frequency) {
     optimal.frequency = freq;
     optimal.index = i;
    }
   } else {
    if (freq <= suboptimal.frequency) {
     suboptimal.frequency = freq;
     suboptimal.index = i;
    }
   }
   break;
  case 128:
   if (freq >= target_freq) {
    if (freq <= optimal.frequency) {
     optimal.frequency = freq;
     optimal.index = i;
    }
   } else {
    if (freq >= suboptimal.frequency) {
     suboptimal.frequency = freq;
     suboptimal.index = i;
    }
   }
   break;
  }
 }
 if (optimal.index > i) {
  if (suboptimal.index > i)
   return -EINVAL;
  *index = suboptimal.index;
 } else
  *index = optimal.index;

 dprintk("target is %u (%u kHz, %u)\n", *index, table[*index].frequency,
  table[*index].index);

 return 0;
}
