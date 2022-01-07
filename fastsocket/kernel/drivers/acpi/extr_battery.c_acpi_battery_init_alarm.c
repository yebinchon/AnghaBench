
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_battery {int alarm_present; scalar_t__ design_capacity_warning; scalar_t__ alarm; TYPE_1__* device; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_battery_set_alarm (struct acpi_battery*) ;
 int acpi_get_handle (int ,char*,int **) ;

__attribute__((used)) static int acpi_battery_init_alarm(struct acpi_battery *battery)
{
 acpi_status status = AE_OK;
 acpi_handle handle = ((void*)0);


 status = acpi_get_handle(battery->device->handle, "_BTP", &handle);
 if (ACPI_FAILURE(status)) {
  battery->alarm_present = 0;
  return 0;
 }
 battery->alarm_present = 1;
 if (!battery->alarm)
  battery->alarm = battery->design_capacity_warning;
 return acpi_battery_set_alarm(battery);
}
