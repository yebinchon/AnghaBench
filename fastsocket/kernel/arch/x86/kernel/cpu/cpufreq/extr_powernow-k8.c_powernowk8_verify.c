
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernow_k8_data {int powernow_table; } ;
struct cpufreq_policy {int cpu; } ;


 int EINVAL ;
 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int ) ;
 struct powernow_k8_data* per_cpu (int ,int ) ;
 int powernow_data ;

__attribute__((used)) static int powernowk8_verify(struct cpufreq_policy *pol)
{
 struct powernow_k8_data *data = per_cpu(powernow_data, pol->cpu);

 if (!data)
  return -EINVAL;

 return cpufreq_frequency_table_verify(pol, data->powernow_table);
}
