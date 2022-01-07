
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dynamic_status; int removable; int ejectable; int lockable; int power_manageable; int wake_capable; } ;
struct acpi_device {TYPE_1__ flags; int handle; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int acpi_get_handle (int ,char*,int **) ;

__attribute__((used)) static int acpi_bus_get_flags(struct acpi_device *device)
{
 acpi_status status = AE_OK;
 acpi_handle temp = ((void*)0);



 status = acpi_get_handle(device->handle, "_STA", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.dynamic_status = 1;


 status = acpi_get_handle(device->handle, "_RMV", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.removable = 1;


 status = acpi_get_handle(device->handle, "_EJD", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.ejectable = 1;
 else {
  status = acpi_get_handle(device->handle, "_EJ0", &temp);
  if (ACPI_SUCCESS(status))
   device->flags.ejectable = 1;
 }


 status = acpi_get_handle(device->handle, "_LCK", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.lockable = 1;


 status = acpi_get_handle(device->handle, "_PS0", &temp);
 if (ACPI_FAILURE(status))
  status = acpi_get_handle(device->handle, "_PR0", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.power_manageable = 1;


 status = acpi_get_handle(device->handle, "_PRW", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.wake_capable = 1;



 return 0;
}
