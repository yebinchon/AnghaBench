
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {scalar_t__ cpu; } ;


 int EINVAL ;

__attribute__((used)) static int s3c_cpufreq_verify(struct cpufreq_policy *policy)
{
 if (policy->cpu != 0)
  return -EINVAL;

 return 0;
}
