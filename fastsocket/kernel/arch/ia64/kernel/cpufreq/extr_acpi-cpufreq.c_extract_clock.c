
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long state_count; TYPE_2__* states; } ;
struct cpufreq_acpi_io {TYPE_1__ acpi_data; } ;
struct TYPE_4__ {unsigned int status; int core_frequency; } ;


 int dprintk (char*) ;

__attribute__((used)) static unsigned
extract_clock (
 struct cpufreq_acpi_io *data,
 unsigned value,
 unsigned int cpu)
{
 unsigned long i;

 dprintk("extract_clock\n");

 for (i = 0; i < data->acpi_data.state_count; i++) {
  if (value == data->acpi_data.states[i].status)
   return data->acpi_data.states[i].core_frequency;
 }
 return data->acpi_data.states[i-1].core_frequency;
}
