
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acpi_thermal {TYPE_3__* device; TYPE_4__* thermal_zone; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_8__ {TYPE_2__ device; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_7__ {int handle; TYPE_1__ dev; } ;


 int acpi_bus_private_data_handler ;
 int acpi_detach_data (int ,int ) ;
 int sysfs_remove_link (int *,char*) ;
 int thermal_zone_device_unregister (TYPE_4__*) ;

__attribute__((used)) static void acpi_thermal_unregister_thermal_zone(struct acpi_thermal *tz)
{
 sysfs_remove_link(&tz->device->dev.kobj, "thermal_zone");
 sysfs_remove_link(&tz->thermal_zone->device.kobj, "device");
 thermal_zone_device_unregister(tz->thermal_zone);
 tz->thermal_zone = ((void*)0);
 acpi_detach_data(tz->device->handle, acpi_bus_private_data_handler);
}
