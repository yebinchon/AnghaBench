
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {size_t cpu; } ;
struct cpufreq_acpi_io {int freq_table; } ;


 struct cpufreq_acpi_io** acpi_io_data ;
 unsigned int cpufreq_frequency_table_verify (struct cpufreq_policy*,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static int
acpi_cpufreq_verify (
 struct cpufreq_policy *policy)
{
 unsigned int result = 0;
 struct cpufreq_acpi_io *data = acpi_io_data[policy->cpu];

 dprintk("acpi_cpufreq_verify\n");

 result = cpufreq_frequency_table_verify(policy,
   data->freq_table);

 return (result);
}
