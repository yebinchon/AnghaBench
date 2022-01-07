
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;


 int ACPI_DEVICE_NOTIFY ;
 int acpi_pad_idle_cpus (int ) ;
 int acpi_pad_notify ;
 int acpi_pad_remove_sysfs (struct acpi_device*) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int isolated_cpus_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acpi_pad_remove(struct acpi_device *device,
 int type)
{
 mutex_lock(&isolated_cpus_lock);
 acpi_pad_idle_cpus(0);
 mutex_unlock(&isolated_cpus_lock);

 acpi_remove_notify_handler(device->handle,
  ACPI_DEVICE_NOTIFY, acpi_pad_notify);
 acpi_pad_remove_sysfs(device);
 return 0;
}
