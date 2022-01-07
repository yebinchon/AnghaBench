
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cooling_mode; } ;
struct acpi_thermal {scalar_t__ polling_frequency; TYPE_1__ flags; } ;


 int ACPI_THERMAL_MODE_ACTIVE ;
 int EINVAL ;
 int acpi_thermal_get_polling_frequency (struct acpi_thermal*) ;
 int acpi_thermal_get_temperature (struct acpi_thermal*) ;
 int acpi_thermal_get_trip_points (struct acpi_thermal*) ;
 int acpi_thermal_set_cooling_mode (struct acpi_thermal*,int ) ;
 scalar_t__ tzp ;

__attribute__((used)) static int acpi_thermal_get_info(struct acpi_thermal *tz)
{
 int result = 0;


 if (!tz)
  return -EINVAL;


 result = acpi_thermal_get_trip_points(tz);
 if (result)
  return result;


 result = acpi_thermal_get_temperature(tz);
 if (result)
  return result;


 result = acpi_thermal_set_cooling_mode(tz, ACPI_THERMAL_MODE_ACTIVE);
 if (!result)
  tz->flags.cooling_mode = 1;


 if (tzp)
  tz->polling_frequency = tzp;
 else
  acpi_thermal_get_polling_frequency(tz);

 return 0;
}
