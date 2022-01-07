
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_BUS_TYPE_DEVICE ;
 int ENODEV ;
 scalar_t__ acpi_bus_add (struct acpi_device**,struct acpi_device*,int ,int ) ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_bus_start (struct acpi_device*) ;
 scalar_t__ acpi_get_parent (int ,int *) ;

__attribute__((used)) static int container_device_add(struct acpi_device **device, acpi_handle handle)
{
 acpi_handle phandle;
 struct acpi_device *pdev;
 int result;


 if (acpi_get_parent(handle, &phandle)) {
  return -ENODEV;
 }

 if (acpi_bus_get_device(phandle, &pdev)) {
  return -ENODEV;
 }

 if (acpi_bus_add(device, pdev, handle, ACPI_BUS_TYPE_DEVICE)) {
  return -ENODEV;
 }

 result = acpi_bus_start(*device);

 return result;
}
