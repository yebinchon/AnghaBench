
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_power_meter_resource {int hwmon_dev; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_power_meter_resource* acpi_driver_data (struct acpi_device*) ;
 int free_capabilities (struct acpi_power_meter_resource*) ;
 int hwmon_device_unregister (int ) ;
 int kfree (struct acpi_power_meter_resource*) ;
 int remove_attrs (struct acpi_power_meter_resource*) ;

__attribute__((used)) static int acpi_power_meter_remove(struct acpi_device *device, int type)
{
 struct acpi_power_meter_resource *resource;

 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 resource = acpi_driver_data(device);
 hwmon_device_unregister(resource->hwmon_dev);

 free_capabilities(resource);
 remove_attrs(resource);

 kfree(resource);
 return 0;
}
