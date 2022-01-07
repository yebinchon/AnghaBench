
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int pm_message_t ;


 int ACPI_STATE_D0 ;
 int AE_OK ;
 int EINVAL ;
 int acpi_bus_set_power (int ,int ) ;

__attribute__((used)) static int acpi_fan_suspend(struct acpi_device *device, pm_message_t state)
{
 if (!device)
  return -EINVAL;

 acpi_bus_set_power(device->handle, ACPI_STATE_D0);

 return AE_OK;
}
