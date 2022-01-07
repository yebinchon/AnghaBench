
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transition_latency; } ;
struct cpufreq_policy {int cpu; int cur; TYPE_1__ cpuinfo; } ;


 int cpufreq_frequency_table_cpuinfo (struct cpufreq_policy*,int ) ;
 int cpufreq_frequency_table_get_attr (int ,int ) ;
 int cris_freq_get_cpu_frequency (int ) ;
 int cris_freq_table ;

__attribute__((used)) static int cris_freq_cpu_init(struct cpufreq_policy *policy)
{
 int result;


 policy->cpuinfo.transition_latency = 1000000;
 policy->cur = cris_freq_get_cpu_frequency(0);

 result = cpufreq_frequency_table_cpuinfo(policy, cris_freq_table);
 if (result)
  return (result);

 cpufreq_frequency_table_get_attr(cris_freq_table, policy->cpu);

 return 0;
}
