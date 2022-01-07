
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_bus_trim (struct acpi_device*,int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static void dock_remove_acpi_device(acpi_handle handle)
{
 struct acpi_device *device;
 int ret;

 if (!acpi_bus_get_device(handle, &device)) {
  ret = acpi_bus_trim(device, 1);
  if (ret)
   pr_debug("error removing bus, %x\n", -ret);
 }
}
