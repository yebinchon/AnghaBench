
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_driver {int drv; } ;


 int driver_unregister (int *) ;

void acpi_bus_unregister_driver(struct acpi_driver *driver)
{
 driver_unregister(&driver->drv);
}
