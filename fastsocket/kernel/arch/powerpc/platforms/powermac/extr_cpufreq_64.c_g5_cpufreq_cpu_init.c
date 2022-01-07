
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int transition_latency; } ;
struct cpufreq_policy {int cpu; int cpus; int cur; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {int frequency; } ;


 int cpu_online_map ;
 int cpufreq_frequency_table_cpuinfo (struct cpufreq_policy*,TYPE_2__*) ;
 int cpufreq_frequency_table_get_attr (TYPE_2__*,int ) ;
 int cpumask_copy (int ,int *) ;
 TYPE_2__* g5_cpu_freqs ;
 size_t g5_query_freq () ;
 int transition_latency ;

__attribute__((used)) static int g5_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 policy->cpuinfo.transition_latency = transition_latency;
 policy->cur = g5_cpu_freqs[g5_query_freq()].frequency;



 cpumask_copy(policy->cpus, &cpu_online_map);
 cpufreq_frequency_table_get_attr(g5_cpu_freqs, policy->cpu);

 return cpufreq_frequency_table_cpuinfo(policy,
  g5_cpu_freqs);
}
