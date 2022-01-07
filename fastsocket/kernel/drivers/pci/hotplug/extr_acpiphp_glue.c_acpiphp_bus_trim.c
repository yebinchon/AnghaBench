
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_bus_trim (struct acpi_device*,int) ;
 int dbg (char*) ;
 int err (char*) ;

__attribute__((used)) static int acpiphp_bus_trim(acpi_handle handle)
{
 struct acpi_device *device;
 int retval;

 retval = acpi_bus_get_device(handle, &device);
 if (retval) {
  dbg("acpi_device not found\n");
  return retval;
 }

 retval = acpi_bus_trim(device, 1);
 if (retval)
  err("cannot remove from acpi list\n");

 return retval;
}
