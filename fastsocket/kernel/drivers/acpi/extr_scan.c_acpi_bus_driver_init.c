
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* add ) (struct acpi_device*) ;} ;
struct acpi_driver {TYPE_1__ ops; } ;
struct acpi_device {struct acpi_driver* driver; int * driver_data; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int EINVAL ;
 int ENOSYS ;
 int stub1 (struct acpi_device*) ;

__attribute__((used)) static int
acpi_bus_driver_init(struct acpi_device *device, struct acpi_driver *driver)
{
 int result = 0;

 if (!device || !driver)
  return -EINVAL;

 if (!driver->ops.add)
  return -ENOSYS;

 result = driver->ops.add(device);
 if (result) {
  device->driver = ((void*)0);
  device->driver_data = ((void*)0);
  return result;
 }

 device->driver = driver;






 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Driver successfully bound to device\n"));
 return 0;
}
