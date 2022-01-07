
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {size_t cpu; } ;
struct TYPE_2__ {int * freq_table; } ;


 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int *) ;
 TYPE_1__** eps_cpu ;

__attribute__((used)) static int eps_verify(struct cpufreq_policy *policy)
{
 return cpufreq_frequency_table_verify(policy,
   &eps_cpu[policy->cpu]->freq_table[0]);
}
