
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_thermal {int thermal_zone; } ;


 int thermal_zone_device_update (int ) ;

__attribute__((used)) static void acpi_thermal_check(void *data)
{
 struct acpi_thermal *tz = data;

 thermal_zone_device_update(tz->thermal_zone);
}
