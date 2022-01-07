
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {scalar_t__ device_type; int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_BUS_TYPE_POWER_BUTTON ;
 scalar_t__ ACPI_BUS_TYPE_SLEEP_BUTTON ;
 int ACPI_DEVICE_NOTIFY ;
 int ACPI_EVENT_POWER_BUTTON ;
 int ACPI_EVENT_SLEEP_BUTTON ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int acpi_device_notify ;
 int acpi_device_notify_fixed ;
 int acpi_install_fixed_event_handler (int ,int ,struct acpi_device*) ;
 int acpi_install_notify_handler (int ,int ,int ,struct acpi_device*) ;

__attribute__((used)) static int acpi_device_install_notify_handler(struct acpi_device *device)
{
 acpi_status status;

 if (device->device_type == ACPI_BUS_TYPE_POWER_BUTTON)
  status =
      acpi_install_fixed_event_handler(ACPI_EVENT_POWER_BUTTON,
           acpi_device_notify_fixed,
           device);
 else if (device->device_type == ACPI_BUS_TYPE_SLEEP_BUTTON)
  status =
      acpi_install_fixed_event_handler(ACPI_EVENT_SLEEP_BUTTON,
           acpi_device_notify_fixed,
           device);
 else
  status = acpi_install_notify_handler(device->handle,
           ACPI_DEVICE_NOTIFY,
           acpi_device_notify,
           device);

 if (ACPI_FAILURE(status))
  return -EINVAL;
 return 0;
}
