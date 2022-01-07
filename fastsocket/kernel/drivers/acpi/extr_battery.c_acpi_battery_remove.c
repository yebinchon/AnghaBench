
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
struct acpi_battery {int lock; } ;


 int EINVAL ;
 int acpi_battery_remove_fs (struct acpi_device*) ;
 struct acpi_battery* acpi_driver_data (struct acpi_device*) ;
 int kfree (struct acpi_battery*) ;
 int mutex_destroy (int *) ;
 int sysfs_remove_battery (struct acpi_battery*) ;

__attribute__((used)) static int acpi_battery_remove(struct acpi_device *device, int type)
{
 struct acpi_battery *battery = ((void*)0);

 if (!device || !acpi_driver_data(device))
  return -EINVAL;
 battery = acpi_driver_data(device);






 mutex_destroy(&battery->lock);
 kfree(battery);
 return 0;
}
