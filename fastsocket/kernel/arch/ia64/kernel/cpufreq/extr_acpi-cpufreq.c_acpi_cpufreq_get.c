
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_acpi_io {int dummy; } ;


 struct cpufreq_acpi_io** acpi_io_data ;
 int dprintk (char*) ;
 unsigned int processor_get_freq (struct cpufreq_acpi_io*,unsigned int) ;

__attribute__((used)) static unsigned int
acpi_cpufreq_get (
 unsigned int cpu)
{
 struct cpufreq_acpi_io *data = acpi_io_data[cpu];

 dprintk("acpi_cpufreq_get\n");

 return processor_get_freq(data, cpu);
}
