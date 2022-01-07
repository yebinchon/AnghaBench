
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef scalar_t__ acpi_status ;
typedef int * acpi_handle ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_NULL_ENTRY ;
 int acpi_bus_get_device (int *,struct acpi_device**) ;
 scalar_t__ acpi_get_parent (int *,int **) ;
 struct acpi_device* acpi_root ;

__attribute__((used)) static struct acpi_device *acpi_bus_get_parent(acpi_handle handle)
{
 acpi_status status;
 int ret;
 struct acpi_device *device;






 if (handle == ((void*)0))
  return acpi_root;

 do {
  status = acpi_get_parent(handle, &handle);
  if (status == AE_NULL_ENTRY)
   return ((void*)0);
  if (ACPI_FAILURE(status))
   return acpi_root;

  ret = acpi_bus_get_device(handle, &device);
  if (ret == 0)
   return device;
 } while (1);
}
