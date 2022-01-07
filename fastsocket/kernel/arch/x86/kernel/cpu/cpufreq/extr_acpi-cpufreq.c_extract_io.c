
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct acpi_processor_performance {int state_count; TYPE_1__* states; } ;
struct acpi_cpufreq_data {TYPE_2__* freq_table; struct acpi_processor_performance* acpi_data; } ;
struct TYPE_4__ {int frequency; } ;
struct TYPE_3__ {scalar_t__ status; } ;



__attribute__((used)) static unsigned extract_io(u32 value, struct acpi_cpufreq_data *data)
{
 struct acpi_processor_performance *perf;
 int i;

 perf = data->acpi_data;

 for (i = 0; i < perf->state_count; i++) {
  if (value == perf->states[i].status)
   return data->freq_table[i].frequency;
 }
 return 0;
}
