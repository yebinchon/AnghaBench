
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int count; } ;


 size_t ACPI_NUM_FIXED_EVENTS ;
 size_t COUNT_ERROR ;
 int acpi_gpe_count ;
 TYPE_1__* all_counters ;
 size_t num_gpes ;

void acpi_os_gpe_count(u32 gpe_number)
{
 acpi_gpe_count++;

 if (!all_counters)
  return;

 if (gpe_number < num_gpes)
  all_counters[gpe_number].count++;
 else
  all_counters[num_gpes + ACPI_NUM_FIXED_EVENTS + COUNT_ERROR].
     count++;

 return;
}
