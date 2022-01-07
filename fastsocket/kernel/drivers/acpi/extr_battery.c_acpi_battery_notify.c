
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int device_class; } ;
struct acpi_device {int dev; TYPE_1__ pnp; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct acpi_battery {TYPE_3__ bat; } ;
struct TYPE_5__ {int kobj; } ;


 scalar_t__ ACPI_BATTERY_NOTIFY_INFO ;
 int KOBJ_CHANGE ;
 int acpi_battery_present (struct acpi_battery*) ;
 int acpi_battery_update (struct acpi_battery*,int) ;
 int acpi_bus_generate_netlink_event (int ,int ,scalar_t__,int ) ;
 int acpi_bus_generate_proc_event (struct acpi_device*,scalar_t__,int ) ;
 struct acpi_battery* acpi_driver_data (struct acpi_device*) ;
 int dev_name (int *) ;
 int kobject_uevent (int *,int ) ;

__attribute__((used)) static void acpi_battery_notify(struct acpi_device *device, u32 event)
{
 struct acpi_battery *battery = acpi_driver_data(device);

 if (!battery)
  return;
 acpi_battery_update(battery, ((event == ACPI_BATTERY_NOTIFY_INFO) ? 1
          : 0));
 acpi_bus_generate_proc_event(device, event,
         acpi_battery_present(battery));
 acpi_bus_generate_netlink_event(device->pnp.device_class,
     dev_name(&device->dev), event,
     acpi_battery_present(battery));





}
