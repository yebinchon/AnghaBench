
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct thermal_cooling_device {TYPE_2__ device; } ;
struct TYPE_3__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;


 int EINVAL ;
 struct thermal_cooling_device* acpi_driver_data (struct acpi_device*) ;
 int sysfs_remove_link (int *,char*) ;
 int thermal_cooling_device_unregister (struct thermal_cooling_device*) ;

__attribute__((used)) static int intel_menlow_memory_remove(struct acpi_device *device, int type)
{
 struct thermal_cooling_device *cdev = acpi_driver_data(device);

 if (!device || !cdev)
  return -EINVAL;

 sysfs_remove_link(&device->dev.kobj, "thermal_cooling");
 sysfs_remove_link(&cdev->device.kobj, "device");
 thermal_cooling_device_unregister(cdev);

 return 0;
}
