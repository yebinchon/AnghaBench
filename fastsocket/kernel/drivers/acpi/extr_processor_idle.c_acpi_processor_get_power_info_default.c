
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* states; } ;
struct acpi_processor {TYPE_1__ power; } ;
struct TYPE_4__ {int valid; size_t type; int entry_method; } ;


 int ACPI_CSTATE_HALT ;
 size_t ACPI_STATE_C0 ;
 size_t ACPI_STATE_C1 ;

__attribute__((used)) static int acpi_processor_get_power_info_default(struct acpi_processor *pr)
{
 if (!pr->power.states[ACPI_STATE_C1].valid) {


  pr->power.states[ACPI_STATE_C1].type = ACPI_STATE_C1;
  pr->power.states[ACPI_STATE_C1].valid = 1;
  pr->power.states[ACPI_STATE_C1].entry_method = ACPI_CSTATE_HALT;
 }

 pr->power.states[ACPI_STATE_C0].valid = 1;
 return 0;
}
