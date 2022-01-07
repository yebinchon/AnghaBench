
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {size_t cpu; } ;
struct cpufreq_acpi_io {int acpi_data; } ;


 struct cpufreq_acpi_io** acpi_io_data ;
 int acpi_processor_unregister_performance (int *,size_t) ;
 int cpufreq_frequency_table_put_attr (size_t) ;
 int dprintk (char*) ;
 int kfree (struct cpufreq_acpi_io*) ;

__attribute__((used)) static int
acpi_cpufreq_cpu_exit (
 struct cpufreq_policy *policy)
{
 struct cpufreq_acpi_io *data = acpi_io_data[policy->cpu];

 dprintk("acpi_cpufreq_cpu_exit\n");

 if (data) {
  cpufreq_frequency_table_put_attr(policy->cpu);
  acpi_io_data[policy->cpu] = ((void*)0);
  acpi_processor_unregister_performance(&data->acpi_data,
                                        policy->cpu);
  kfree(data);
 }

 return (0);
}
