
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
struct acpi_bus_ops {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int ENODEV ;
 int acpi_bus_check_add (int ,int ,struct acpi_bus_ops*,void**) ;
 int acpi_walk_namespace (int ,int ,int ,int (*) (int ,int ,struct acpi_bus_ops*,void**),struct acpi_bus_ops*,void**) ;

__attribute__((used)) static int acpi_bus_scan(acpi_handle handle, struct acpi_bus_ops *ops,
    struct acpi_device **child)
{
 acpi_status status;
 void *device = ((void*)0);

 status = acpi_bus_check_add(handle, 0, ops, &device);
 if (ACPI_SUCCESS(status))
  acpi_walk_namespace(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
        acpi_bus_check_add, ops, &device);

 if (child)
  *child = device;

 if (device)
  return 0;
 else
  return -ENODEV;
}
