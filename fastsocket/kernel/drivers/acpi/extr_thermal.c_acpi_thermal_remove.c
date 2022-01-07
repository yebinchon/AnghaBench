
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_thermal {int lock; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_thermal* acpi_driver_data (struct acpi_device*) ;
 int acpi_thermal_remove_fs (struct acpi_device*) ;
 int acpi_thermal_unregister_thermal_zone (struct acpi_thermal*) ;
 int kfree (struct acpi_thermal*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int acpi_thermal_remove(struct acpi_device *device, int type)
{
 struct acpi_thermal *tz = ((void*)0);

 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 tz = acpi_driver_data(device);

 acpi_thermal_remove_fs(device);
 acpi_thermal_unregister_thermal_zone(tz);
 mutex_destroy(&tz->lock);
 kfree(tz);
 return 0;
}
