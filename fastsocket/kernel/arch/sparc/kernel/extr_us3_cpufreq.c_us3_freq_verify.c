
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {size_t cpu; } ;
struct TYPE_2__ {int * table; } ;


 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int *) ;
 TYPE_1__* us3_freq_table ;

__attribute__((used)) static int us3_freq_verify(struct cpufreq_policy *policy)
{
 return cpufreq_frequency_table_verify(policy,
           &us3_freq_table[policy->cpu].table[0]);
}
