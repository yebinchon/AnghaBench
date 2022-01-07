
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_thermal {unsigned long long last_temperature; unsigned long long temperature; TYPE_1__* device; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int EINVAL ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int acpi_thermal_get_temperature(struct acpi_thermal *tz)
{
 acpi_status status = AE_OK;
 unsigned long long tmp;

 if (!tz)
  return -EINVAL;

 tz->last_temperature = tz->temperature;

 status = acpi_evaluate_integer(tz->device->handle, "_TMP", ((void*)0), &tmp);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 tz->temperature = tmp;
 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Temperature is %lu dK\n",
     tz->temperature));

 return 0;
}
