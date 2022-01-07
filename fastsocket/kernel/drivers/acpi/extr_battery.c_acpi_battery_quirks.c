
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {int quirks; scalar_t__ power_unit; } ;


 int QUIRK_SIGNED16_CURRENT ;
 scalar_t__ dmi_name_in_vendors (char*) ;

__attribute__((used)) static void acpi_battery_quirks(struct acpi_battery *battery)
{
 battery->quirks = 0;
 if (dmi_name_in_vendors("Acer") && battery->power_unit) {
  battery->quirks |= QUIRK_SIGNED16_CURRENT;
 }
}
