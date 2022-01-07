
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct acpi_power_meter_resource {int lock; } ;
struct TYPE_3__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;


 int ACPI_POWER_METER_CLASS ;
 int BUG () ;





 int POWER_ALARM_NAME ;
 int POWER_AVERAGE_NAME ;
 int POWER_AVG_INTERVAL_NAME ;
 int POWER_CAP_NAME ;
 int acpi_bus_generate_netlink_event (int ,int ,int,int ) ;
 struct acpi_power_meter_resource* acpi_driver_data (struct acpi_device*) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int free_capabilities (struct acpi_power_meter_resource*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_capabilities (struct acpi_power_meter_resource*) ;
 int remove_attrs (struct acpi_power_meter_resource*) ;
 int setup_attrs (struct acpi_power_meter_resource*) ;
 int sysfs_notify (int *,int *,int ) ;
 int update_avg_interval (struct acpi_power_meter_resource*) ;
 int update_cap (struct acpi_power_meter_resource*) ;
 int update_meter (struct acpi_power_meter_resource*) ;

__attribute__((used)) static void acpi_power_meter_notify(struct acpi_device *device, u32 event)
{
 struct acpi_power_meter_resource *resource;
 int res;

 if (!device || !acpi_driver_data(device))
  return;

 resource = acpi_driver_data(device);

 mutex_lock(&resource->lock);
 switch (event) {
 case 130:
  free_capabilities(resource);
  res = read_capabilities(resource);
  if (res)
   break;

  remove_attrs(resource);
  setup_attrs(resource);
  break;
 case 128:
  sysfs_notify(&device->dev.kobj, ((void*)0), POWER_AVERAGE_NAME);
  update_meter(resource);
  break;
 case 132:
  sysfs_notify(&device->dev.kobj, ((void*)0), POWER_CAP_NAME);
  update_cap(resource);
  break;
 case 129:
  sysfs_notify(&device->dev.kobj, ((void*)0), POWER_AVG_INTERVAL_NAME);
  update_avg_interval(resource);
  break;
 case 131:
  sysfs_notify(&device->dev.kobj, ((void*)0), POWER_ALARM_NAME);
  dev_info(&device->dev, "Capping in progress.\n");
  break;
 default:
  BUG();
 }
 mutex_unlock(&resource->lock);

 acpi_bus_generate_netlink_event(ACPI_POWER_METER_CLASS,
     dev_name(&device->dev), event, 0);
}
