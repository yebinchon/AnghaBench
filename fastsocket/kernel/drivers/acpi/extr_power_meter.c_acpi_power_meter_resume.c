
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_power_meter_resource {int dummy; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_power_meter_resource* acpi_driver_data (struct acpi_device*) ;
 int free_capabilities (struct acpi_power_meter_resource*) ;
 int read_capabilities (struct acpi_power_meter_resource*) ;

__attribute__((used)) static int acpi_power_meter_resume(struct acpi_device *device)
{
 struct acpi_power_meter_resource *resource;

 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 resource = acpi_driver_data(device);
 free_capabilities(resource);
 read_capabilities(resource);

 return 0;
}
