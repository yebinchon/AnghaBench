
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int (* suspend ) (struct acpi_device*,int ) ;} ;
struct acpi_driver {TYPE_1__ ops; } ;
struct acpi_device {struct acpi_driver* driver; } ;
typedef int pm_message_t ;


 int stub1 (struct acpi_device*,int ) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static int acpi_device_suspend(struct device *dev, pm_message_t state)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 struct acpi_driver *acpi_drv = acpi_dev->driver;

 if (acpi_drv && acpi_drv->ops.suspend)
  return acpi_drv->ops.suspend(acpi_dev, state);
 return 0;
}
