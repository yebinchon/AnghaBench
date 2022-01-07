
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {scalar_t__ device_type; int handle; } ;


 scalar_t__ ACPI_BUS_TYPE_POWER_BUTTON ;
 scalar_t__ ACPI_BUS_TYPE_SLEEP_BUTTON ;
 int ACPI_DEVICE_NOTIFY ;
 int ACPI_EVENT_POWER_BUTTON ;
 int ACPI_EVENT_SLEEP_BUTTON ;
 int acpi_device_notify ;
 int acpi_device_notify_fixed ;
 int acpi_remove_fixed_event_handler (int ,int ) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;

__attribute__((used)) static void acpi_device_remove_notify_handler(struct acpi_device *device)
{
 if (device->device_type == ACPI_BUS_TYPE_POWER_BUTTON)
  acpi_remove_fixed_event_handler(ACPI_EVENT_POWER_BUTTON,
      acpi_device_notify_fixed);
 else if (device->device_type == ACPI_BUS_TYPE_SLEEP_BUTTON)
  acpi_remove_fixed_event_handler(ACPI_EVENT_SLEEP_BUTTON,
      acpi_device_notify_fixed);
 else
  acpi_remove_notify_handler(device->handle, ACPI_DEVICE_NOTIFY,
        acpi_device_notify);
}
