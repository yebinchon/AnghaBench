
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; int min_freq; } ;
struct cpufreq_policy {unsigned int min; unsigned int max; int cpu; TYPE_1__ cpuinfo; } ;
struct cpufreq_frequency_table {unsigned int frequency; } ;


 unsigned int CPUFREQ_ENTRY_INVALID ;
 unsigned int CPUFREQ_TABLE_END ;
 int EINVAL ;
 int cpu_online (int ) ;
 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;
 int dprintk (char*,unsigned int,unsigned int,int ) ;

int cpufreq_frequency_table_verify(struct cpufreq_policy *policy,
       struct cpufreq_frequency_table *table)
{
 unsigned int next_larger = ~0;
 unsigned int i;
 unsigned int count = 0;

 dprintk("request for verification of policy (%u - %u kHz) for cpu %u\n",
     policy->min, policy->max, policy->cpu);

 if (!cpu_online(policy->cpu))
  return -EINVAL;

 cpufreq_verify_within_limits(policy, policy->cpuinfo.min_freq,
         policy->cpuinfo.max_freq);

 for (i = 0; (table[i].frequency != CPUFREQ_TABLE_END); i++) {
  unsigned int freq = table[i].frequency;
  if (freq == CPUFREQ_ENTRY_INVALID)
   continue;
  if ((freq >= policy->min) && (freq <= policy->max))
   count++;
  else if ((next_larger > freq) && (freq > policy->max))
   next_larger = freq;
 }

 if (!count)
  policy->max = next_larger;

 cpufreq_verify_within_limits(policy, policy->cpuinfo.min_freq,
         policy->cpuinfo.max_freq);

 dprintk("verification lead to (%u - %u kHz) for cpu %u\n",
    policy->min, policy->max, policy->cpu);

 return 0;
}
