
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_1__ integer; int member_0; } ;
struct acpi_thermal {TYPE_2__* device; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;
struct TYPE_4__ {int handle; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_OK ;
 int EINVAL ;
 int ENODEV ;
 int acpi_evaluate_object (int *,int *,struct acpi_object_list*,int *) ;
 int acpi_get_handle (int ,char*,int **) ;

__attribute__((used)) static int acpi_thermal_set_cooling_mode(struct acpi_thermal *tz, int mode)
{
 acpi_status status = AE_OK;
 union acpi_object arg0 = { ACPI_TYPE_INTEGER };
 struct acpi_object_list arg_list = { 1, &arg0 };
 acpi_handle handle = ((void*)0);


 if (!tz)
  return -EINVAL;

 status = acpi_get_handle(tz->device->handle, "_SCP", &handle);
 if (ACPI_FAILURE(status)) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "_SCP not present\n"));
  return -ENODEV;
 }

 arg0.integer.value = mode;

 status = acpi_evaluate_object(handle, ((void*)0), &arg_list, ((void*)0));
 if (ACPI_FAILURE(status))
  return -ENODEV;

 return 0;
}
