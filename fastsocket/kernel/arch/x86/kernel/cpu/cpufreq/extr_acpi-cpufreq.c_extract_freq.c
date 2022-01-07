
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_cpufreq_data {int cpu_feature; } ;




 int extract_io (int ,struct acpi_cpufreq_data*) ;
 int extract_msr (int ,struct acpi_cpufreq_data*) ;

__attribute__((used)) static unsigned extract_freq(u32 val, struct acpi_cpufreq_data *data)
{
 switch (data->cpu_feature) {
 case 129:
  return extract_msr(val, data);
 case 128:
  return extract_io(val, data);
 default:
  return 0;
 }
}
