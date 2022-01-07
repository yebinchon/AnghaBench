
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct acpi_driver {int ids; } ;
struct acpi_device {int dummy; } ;


 int acpi_match_device_ids (struct acpi_device*,int ) ;
 struct acpi_device* to_acpi_device (struct device*) ;
 struct acpi_driver* to_acpi_driver (struct device_driver*) ;

__attribute__((used)) static int acpi_bus_match(struct device *dev, struct device_driver *drv)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 struct acpi_driver *acpi_drv = to_acpi_driver(drv);

 return !acpi_match_device_ids(acpi_dev, acpi_drv->ids);
}
