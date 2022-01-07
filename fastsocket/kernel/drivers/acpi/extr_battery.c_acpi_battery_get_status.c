
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {int device; } ;


 int ACPI_EXCEPTION (int ) ;
 int AE_ERROR ;
 int AE_INFO ;
 int ENODEV ;
 scalar_t__ acpi_bus_get_status (int ) ;

__attribute__((used)) static int acpi_battery_get_status(struct acpi_battery *battery)
{
 if (acpi_bus_get_status(battery->device)) {
  ACPI_EXCEPTION((AE_INFO, AE_ERROR, "Evaluating _STA"));
  return -ENODEV;
 }
 return 0;
}
