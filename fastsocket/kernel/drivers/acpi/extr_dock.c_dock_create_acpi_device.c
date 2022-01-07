
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_BUS_TYPE_DEVICE ;
 int acpi_bus_add (struct acpi_device**,struct acpi_device*,int ,int ) ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_get_parent (int ,int *) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static struct acpi_device * dock_create_acpi_device(acpi_handle handle)
{
 struct acpi_device *device = ((void*)0);
 struct acpi_device *parent_device;
 acpi_handle parent;
 int ret;

 if (acpi_bus_get_device(handle, &device)) {




  acpi_get_parent(handle, &parent);
  if (acpi_bus_get_device(parent, &parent_device))
   parent_device = ((void*)0);

  ret = acpi_bus_add(&device, parent_device, handle,
   ACPI_BUS_TYPE_DEVICE);
  if (ret) {
   pr_debug("error adding bus, %x\n",
    -ret);
   return ((void*)0);
  }
 }
 return device;
}
