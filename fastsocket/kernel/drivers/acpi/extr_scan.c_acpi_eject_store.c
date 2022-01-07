
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_eject_event {int event; int handle; } ;
struct TYPE_2__ {scalar_t__ eject_pending; int ejectable; } ;
struct acpi_device {TYPE_1__ flags; int handle; int * driver; } ;
typedef int ssize_t ;
typedef int acpi_status ;
typedef int acpi_object_type ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NOTIFY_EJECT_REQUEST ;
 int ACPI_OST_EC_OSPM_EJECT ;
 int ACPI_OST_SC_EJECT_IN_PROGRESS ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_bus_hot_remove_device ;
 int acpi_evaluate_hotplug_ost (int ,int ,int ,int *) ;
 int acpi_get_type (int ,int *) ;
 int acpi_os_hotplug_execute (int ,void*) ;
 struct acpi_eject_event* kmalloc (int,int ) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t
acpi_eject_store(struct device *d, struct device_attribute *attr,
  const char *buf, size_t count)
{
 int ret = count;
 acpi_status status;
 acpi_object_type type = 0;
 struct acpi_device *acpi_device = to_acpi_device(d);
 struct acpi_eject_event *ej_event;

 if ((!count) || (buf[0] != '1')) {
  return -EINVAL;
 }

 if (acpi_device->driver == ((void*)0)) {
  ret = -ENODEV;
  goto err;
 }

 status = acpi_get_type(acpi_device->handle, &type);
 if (ACPI_FAILURE(status) || (!acpi_device->flags.ejectable)) {
  ret = -ENODEV;
  goto err;
 }

 ej_event = kmalloc(sizeof(*ej_event), GFP_KERNEL);
 if (!ej_event) {
  ret = -ENOMEM;
  goto err;
 }

 ej_event->handle = acpi_device->handle;
 if (acpi_device->flags.eject_pending) {

  ej_event->event = ACPI_NOTIFY_EJECT_REQUEST;
  acpi_device->flags.eject_pending = 0;
 } else {

  ej_event->event = ACPI_OST_EC_OSPM_EJECT;
  (void) acpi_evaluate_hotplug_ost(ej_event->handle,
   ej_event->event, ACPI_OST_SC_EJECT_IN_PROGRESS, ((void*)0));
 }

 acpi_os_hotplug_execute(acpi_bus_hot_remove_device, (void *)ej_event);
err:
 return ret;
}
