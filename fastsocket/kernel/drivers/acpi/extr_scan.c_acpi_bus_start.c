
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
struct acpi_bus_ops {int acpi_op_start; } ;
typedef int ops ;


 int EINVAL ;
 int acpi_bus_scan (int ,struct acpi_bus_ops*,int *) ;
 int memset (struct acpi_bus_ops*,int ,int) ;

int acpi_bus_start(struct acpi_device *device)
{
 struct acpi_bus_ops ops;

 if (!device)
  return -EINVAL;

 memset(&ops, 0, sizeof(ops));
 ops.acpi_op_start = 1;

 return acpi_bus_scan(device->handle, &ops, ((void*)0));
}
