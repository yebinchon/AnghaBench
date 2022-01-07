
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
struct acpi_bus_ops {int acpi_op_add; } ;
typedef int ops ;
typedef int acpi_handle ;


 int acpi_bus_scan (int ,struct acpi_bus_ops*,struct acpi_device**) ;
 int memset (struct acpi_bus_ops*,int ,int) ;

int
acpi_bus_add(struct acpi_device **child,
      struct acpi_device *parent, acpi_handle handle, int type)
{
 struct acpi_bus_ops ops;

 memset(&ops, 0, sizeof(ops));
 ops.acpi_op_add = 1;

 return acpi_bus_scan(handle, &ops, child);
}
