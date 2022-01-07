
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct eps_cpu_data {int dummy; } ;
struct cpufreq_policy {unsigned int cpu; } ;


 int ENODEV ;
 int MSR_IA32_PERF_STATUS ;
 int cpufreq_frequency_table_put_attr (unsigned int) ;
 struct eps_cpu_data** eps_cpu ;
 int eps_set_state (struct eps_cpu_data*,unsigned int,int) ;
 int kfree (struct eps_cpu_data*) ;
 int rdmsr (int ,int,int) ;

__attribute__((used)) static int eps_cpu_exit(struct cpufreq_policy *policy)
{
 unsigned int cpu = policy->cpu;
 struct eps_cpu_data *centaur;
 u32 lo, hi;

 if (eps_cpu[cpu] == ((void*)0))
  return -ENODEV;
 centaur = eps_cpu[cpu];


 rdmsr(MSR_IA32_PERF_STATUS, lo, hi);

 eps_set_state(centaur, cpu, hi & 0xffff);

 cpufreq_frequency_table_put_attr(policy->cpu);
 kfree(eps_cpu[cpu]);
 eps_cpu[cpu] = ((void*)0);
 return 0;
}
