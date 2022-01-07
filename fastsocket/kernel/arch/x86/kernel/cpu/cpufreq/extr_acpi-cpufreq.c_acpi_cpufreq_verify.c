
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;
struct acpi_cpufreq_data {int freq_table; } ;


 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int ) ;
 int dprintk (char*) ;
 int drv_data ;
 struct acpi_cpufreq_data* per_cpu (int ,int ) ;

__attribute__((used)) static int acpi_cpufreq_verify(struct cpufreq_policy *policy)
{
 struct acpi_cpufreq_data *data = per_cpu(drv_data, policy->cpu);

 dprintk("acpi_cpufreq_verify\n");

 return cpufreq_frequency_table_verify(policy, data->freq_table);
}
