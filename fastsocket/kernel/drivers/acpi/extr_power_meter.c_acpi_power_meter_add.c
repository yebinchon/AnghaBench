
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_power_meter_resource {int* trip; int hwmon_dev; int lock; struct acpi_device* acpi_dev; scalar_t__ sensors_valid; } ;
struct acpi_device {int dev; struct acpi_power_meter_resource* driver_data; } ;


 int ACPI_POWER_METER_CLASS ;
 int ACPI_POWER_METER_DEVICE_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int free_capabilities (struct acpi_power_meter_resource*) ;
 int hwmon_device_register (int *) ;
 int kfree (struct acpi_power_meter_resource*) ;
 struct acpi_power_meter_resource* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int read_capabilities (struct acpi_power_meter_resource*) ;
 int remove_attrs (struct acpi_power_meter_resource*) ;
 int setup_attrs (struct acpi_power_meter_resource*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int acpi_power_meter_add(struct acpi_device *device)
{
 int res;
 struct acpi_power_meter_resource *resource;

 if (!device)
  return -EINVAL;

 resource = kzalloc(sizeof(struct acpi_power_meter_resource),
      GFP_KERNEL);
 if (!resource)
  return -ENOMEM;

 resource->sensors_valid = 0;
 resource->acpi_dev = device;
 mutex_init(&resource->lock);
 strcpy(acpi_device_name(device), ACPI_POWER_METER_DEVICE_NAME);
 strcpy(acpi_device_class(device), ACPI_POWER_METER_CLASS);
 device->driver_data = resource;

 free_capabilities(resource);
 res = read_capabilities(resource);
 if (res)
  goto exit_free;

 resource->trip[0] = resource->trip[1] = -1;

 res = setup_attrs(resource);
 if (res)
  goto exit_free;

 resource->hwmon_dev = hwmon_device_register(&device->dev);
 if (IS_ERR(resource->hwmon_dev)) {
  res = PTR_ERR(resource->hwmon_dev);
  goto exit_remove;
 }

 res = 0;
 goto exit;

exit_remove:
 remove_attrs(resource);
exit_free:
 kfree(resource);
exit:
 return res;
}
