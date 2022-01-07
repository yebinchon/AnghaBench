
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bus_address; } ;
struct acpi_device {TYPE_2__* parent; TYPE_1__ flags; int dev; int removal_type; } ;
struct TYPE_6__ {int (* unbind ) (struct acpi_device*) ;} ;
struct TYPE_5__ {TYPE_3__ ops; } ;


 int ACPI_BUS_REMOVAL_EJECT ;
 int EINVAL ;
 int acpi_device_unregister (struct acpi_device*,int ) ;
 int device_release_driver (int *) ;
 int stub1 (struct acpi_device*) ;

__attribute__((used)) static int acpi_bus_remove(struct acpi_device *dev, int rmdevice)
{
 if (!dev)
  return -EINVAL;

 dev->removal_type = ACPI_BUS_REMOVAL_EJECT;
 device_release_driver(&dev->dev);

 if (!rmdevice)
  return 0;




 if (dev->flags.bus_address) {
  if ((dev->parent) && (dev->parent->ops.unbind))
   dev->parent->ops.unbind(dev);
 }
 acpi_device_unregister(dev, ACPI_BUS_REMOVAL_EJECT);

 return 0;
}
