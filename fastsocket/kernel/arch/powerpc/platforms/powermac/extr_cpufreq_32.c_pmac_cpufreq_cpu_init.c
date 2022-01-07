
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transition_latency; } ;
struct cpufreq_policy {scalar_t__ cpu; int cur; TYPE_1__ cpuinfo; } ;


 int CPUFREQ_ETERNAL ;
 int ENODEV ;
 int cpufreq_frequency_table_cpuinfo (struct cpufreq_policy*,int ) ;
 int cpufreq_frequency_table_get_attr (int ,scalar_t__) ;
 int cur_freq ;
 int pmac_cpu_freqs ;

__attribute__((used)) static int pmac_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 if (policy->cpu != 0)
  return -ENODEV;

 policy->cpuinfo.transition_latency = CPUFREQ_ETERNAL;
 policy->cur = cur_freq;

 cpufreq_frequency_table_get_attr(pmac_cpu_freqs, policy->cpu);
 return cpufreq_frequency_table_cpuinfo(policy, pmac_cpu_freqs);
}
