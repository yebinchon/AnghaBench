
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int (* remove ) (struct acpi_device*,int ) ;scalar_t__ notify; } ;
struct acpi_driver {TYPE_1__ ops; } ;
struct acpi_device {int * driver_data; struct acpi_driver* driver; int removal_type; } ;


 int acpi_device_remove_notify_handler (struct acpi_device*) ;
 int put_device (struct device*) ;
 int stub1 (struct acpi_device*,int ) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static int acpi_device_remove(struct device * dev)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 struct acpi_driver *acpi_drv = acpi_dev->driver;

 if (acpi_drv) {
  if (acpi_drv->ops.notify)
   acpi_device_remove_notify_handler(acpi_dev);
  if (acpi_drv->ops.remove)
   acpi_drv->ops.remove(acpi_dev, acpi_dev->removal_type);
 }
 acpi_dev->driver = ((void*)0);
 acpi_dev->driver_data = ((void*)0);

 put_device(dev);
 return 0;
}
