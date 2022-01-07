
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; int handle; int wakeup_list; int node; scalar_t__ parent; } ;


 int acpi_bus_data_handler ;
 int acpi_detach_data (int ,int ) ;
 int acpi_device_lock ;
 int acpi_device_remove_files (struct acpi_device*) ;
 int device_unregister (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void acpi_device_unregister(struct acpi_device *device, int type)
{
 mutex_lock(&acpi_device_lock);
 if (device->parent)
  list_del(&device->node);

 list_del(&device->wakeup_list);
 mutex_unlock(&acpi_device_lock);

 acpi_detach_data(device->handle, acpi_bus_data_handler);

 acpi_device_remove_files(device);
 device_unregister(&device->dev);
}
