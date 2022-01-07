
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_func {int handle; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_BUS_TYPE_DEVICE ;
 int acpi_bus_add (struct acpi_device**,struct acpi_device*,int ,int ) ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_bus_start (struct acpi_device*) ;
 int acpi_bus_trim (struct acpi_device*,int) ;
 int acpi_get_parent (int ,int *) ;
 int dbg (char*,...) ;

__attribute__((used)) static int acpiphp_bus_add(struct acpiphp_func *func)
{
 acpi_handle phandle;
 struct acpi_device *device, *pdevice;
 int ret_val;

 acpi_get_parent(func->handle, &phandle);
 if (acpi_bus_get_device(phandle, &pdevice)) {
  dbg("no parent device, assuming NULL\n");
  pdevice = ((void*)0);
 }
 if (!acpi_bus_get_device(func->handle, &device)) {
  dbg("bus exists... trim\n");



  ret_val = acpi_bus_trim(device, 1);
  dbg("acpi_bus_trim return %x\n", ret_val);
 }

 ret_val = acpi_bus_add(&device, pdevice, func->handle,
  ACPI_BUS_TYPE_DEVICE);
 if (ret_val) {
  dbg("error adding bus, %x\n",
   -ret_val);
  goto acpiphp_bus_add_out;
 }
 ret_val = acpi_bus_start(device);

acpiphp_bus_add_out:
 return ret_val;
}
