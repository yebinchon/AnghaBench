
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_device {int handle; } ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3 ;
 int EINVAL ;
 int acpi_bus_set_power (int ,int ) ;

__attribute__((used)) static int
fan_set_cur_state(struct thermal_cooling_device *cdev, unsigned long state)
{
 struct acpi_device *device = cdev->devdata;
 int result;

 if (!device || (state != 0 && state != 1))
  return -EINVAL;

 result = acpi_bus_set_power(device->handle,
    state ? ACPI_STATE_D0 : ACPI_STATE_D3);

 return result;
}
