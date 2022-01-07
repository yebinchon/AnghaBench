
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_thermal {int polling_frequency; TYPE_1__* thermal_zone; scalar_t__ tz_enabled; } ;
struct TYPE_2__ {int polling_delay; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int EINVAL ;
 int thermal_zone_device_update (TYPE_1__*) ;

__attribute__((used)) static int acpi_thermal_set_polling(struct acpi_thermal *tz, int seconds)
{

 if (!tz)
  return -EINVAL;

 tz->polling_frequency = seconds * 10;

 tz->thermal_zone->polling_delay = seconds * 1000;

 if (tz->tz_enabled)
  thermal_zone_device_update(tz->thermal_zone);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Polling frequency set to %lu seconds\n",
     tz->polling_frequency/10));

 return 0;
}
