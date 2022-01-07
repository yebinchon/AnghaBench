
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {scalar_t__ cpu; } ;


 int EINVAL ;
 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int ) ;
 int s3c64xx_freq_table ;

__attribute__((used)) static int s3c64xx_cpufreq_verify_speed(struct cpufreq_policy *policy)
{
 if (policy->cpu != 0)
  return -EINVAL;

 return cpufreq_frequency_table_verify(policy, s3c64xx_freq_table);
}
