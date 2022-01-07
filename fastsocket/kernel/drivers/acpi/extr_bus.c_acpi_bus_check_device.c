
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device_status {scalar_t__ present; } ;
struct acpi_device {struct acpi_device_status status; TYPE_1__* parent; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_2__ {struct acpi_device_status status; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ STRUCT_TO_INT (struct acpi_device_status) ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_bus_get_status (struct acpi_device*) ;

__attribute__((used)) static void acpi_bus_check_device(acpi_handle handle)
{
 struct acpi_device *device;
 acpi_status status;
 struct acpi_device_status old_status;

 if (acpi_bus_get_device(handle, &device))
  return;
 if (!device)
  return;

 old_status = device->status;





 if (device->parent && !device->parent->status.present) {
  device->status = device->parent->status;
  return;
 }

 status = acpi_bus_get_status(device);
 if (ACPI_FAILURE(status))
  return;

 if (STRUCT_TO_INT(old_status) == STRUCT_TO_INT(device->status))
  return;




 if ((device->status.present) && !(old_status.present)) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Device insertion detected\n"));

 } else if (!(device->status.present) && (old_status.present)) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Device removal detected\n"));

 }
}
