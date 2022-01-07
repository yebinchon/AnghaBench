
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* notify ) (struct acpi_device*,int ) ;} ;
struct acpi_driver {int flags; TYPE_1__ ops; } ;
struct acpi_device {struct acpi_driver* driver; } ;
typedef scalar_t__ acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DRIVER_ALL_NOTIFY_EVENTS ;
 int acpi_bus_check_device (scalar_t__) ;
 int acpi_bus_check_scope (scalar_t__) ;
 int acpi_bus_get_device (scalar_t__,struct acpi_device**) ;
 int acpi_bus_notify_list ;
 int blocking_notifier_call_chain (int *,int ,void*) ;
 int stub1 (struct acpi_device*,int ) ;

__attribute__((used)) static void acpi_bus_notify(acpi_handle handle, u32 type, void *data)
{
 struct acpi_device *device = ((void*)0);
 struct acpi_driver *driver;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Notification %#02x to handle %p\n",
     type, handle));

 blocking_notifier_call_chain(&acpi_bus_notify_list,
  type, (void *)handle);

 switch (type) {

 case 135:
  acpi_bus_check_scope(handle);




  break;

 case 133:
  acpi_bus_check_device(handle);




  break;

 case 131:

  break;

 case 130:

  break;

 case 132:

  break;

 case 129:

  break;

 case 134:

  break;

 case 128:

  break;

 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Received unknown/unsupported notification [%08x]\n",
      type));
  break;
 }

 acpi_bus_get_device(handle, &device);
 if (device) {
  driver = device->driver;
  if (driver && driver->ops.notify &&
      (driver->flags & ACPI_DRIVER_ALL_NOTIFY_EVENTS))
   driver->ops.notify(device, type);
 }
}
