
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {size_t cpu; } ;
struct cpufreq_acpi_io {int freq_table; } ;


 struct cpufreq_acpi_io** acpi_io_data ;
 unsigned int cpufreq_frequency_table_target (struct cpufreq_policy*,int ,unsigned int,unsigned int,unsigned int*) ;
 int dprintk (char*) ;
 unsigned int processor_set_freq (struct cpufreq_acpi_io*,size_t,unsigned int) ;

__attribute__((used)) static int
acpi_cpufreq_target (
 struct cpufreq_policy *policy,
 unsigned int target_freq,
 unsigned int relation)
{
 struct cpufreq_acpi_io *data = acpi_io_data[policy->cpu];
 unsigned int next_state = 0;
 unsigned int result = 0;

 dprintk("acpi_cpufreq_setpolicy\n");

 result = cpufreq_frequency_table_target(policy,
   data->freq_table, target_freq, relation, &next_state);
 if (result)
  return (result);

 result = processor_set_freq(data, policy->cpu, next_state);

 return (result);
}
