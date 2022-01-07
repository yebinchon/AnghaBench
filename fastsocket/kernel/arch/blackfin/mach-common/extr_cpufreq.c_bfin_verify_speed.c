
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int bfin_freq_table ;
 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int ) ;

__attribute__((used)) static int bfin_verify_speed(struct cpufreq_policy *policy)
{
 return cpufreq_frequency_table_verify(policy, bfin_freq_table);
}
