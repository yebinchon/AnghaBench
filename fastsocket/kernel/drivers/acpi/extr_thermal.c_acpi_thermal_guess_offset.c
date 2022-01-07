
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ valid; } ;
struct TYPE_5__ {int temperature; TYPE_1__ flags; } ;
struct TYPE_6__ {TYPE_2__ critical; } ;
struct acpi_thermal {int kelvin_offset; TYPE_3__ trips; } ;



__attribute__((used)) static void acpi_thermal_guess_offset(struct acpi_thermal *tz)
{
 if (tz->trips.critical.flags.valid &&
     (tz->trips.critical.temperature % 5) == 1)
  tz->kelvin_offset = 2731;
 else
  tz->kelvin_offset = 2732;
}
