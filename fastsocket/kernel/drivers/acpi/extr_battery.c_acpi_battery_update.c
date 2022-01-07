
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct acpi_battery {int power_unit; TYPE_1__ bat; scalar_t__ update_time; } ;


 int acpi_battery_get_info (struct acpi_battery*) ;
 int acpi_battery_get_state (struct acpi_battery*) ;
 int acpi_battery_get_status (struct acpi_battery*) ;
 int acpi_battery_init_alarm (struct acpi_battery*) ;
 int acpi_battery_present (struct acpi_battery*) ;
 int acpi_battery_quirks (struct acpi_battery*) ;
 int sysfs_add_battery (struct acpi_battery*) ;
 int sysfs_remove_battery (struct acpi_battery*) ;

__attribute__((used)) static int acpi_battery_update(struct acpi_battery *battery, bool get_info)
{
 int result, old_present = acpi_battery_present(battery);



 result = acpi_battery_get_status(battery);
 if (result)
  return result;







 if (!battery->update_time ||
     old_present != acpi_battery_present(battery)) {
  result = acpi_battery_get_info(battery);
  if (result)
   return result;
  acpi_battery_quirks(battery);
  acpi_battery_init_alarm(battery);
 }




 if (get_info) {
  acpi_battery_get_info(battery);







 }
 return acpi_battery_get_state(battery);
}
