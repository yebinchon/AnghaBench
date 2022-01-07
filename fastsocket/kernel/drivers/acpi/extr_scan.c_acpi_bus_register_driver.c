
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; int * bus; int name; } ;
struct acpi_driver {TYPE_1__ drv; int owner; int name; } ;


 int ENODEV ;
 int acpi_bus_type ;
 scalar_t__ acpi_disabled ;
 int driver_register (TYPE_1__*) ;

int acpi_bus_register_driver(struct acpi_driver *driver)
{
 int ret;

 if (acpi_disabled)
  return -ENODEV;
 driver->drv.name = driver->name;
 driver->drv.bus = &acpi_bus_type;
 driver->drv.owner = driver->owner;

 ret = driver_register(&driver->drv);
 return ret;
}
