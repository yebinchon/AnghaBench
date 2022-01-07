
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_device {int handle; } ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3 ;
 int EINVAL ;
 int acpi_bus_get_power (int ,int*) ;

__attribute__((used)) static int fan_get_cur_state(struct thermal_cooling_device *cdev, unsigned long
        *state)
{
 struct acpi_device *device = cdev->devdata;
 int result;
 int acpi_state;

 if (!device)
  return -EINVAL;

 result = acpi_bus_get_power(device->handle, &acpi_state);
 if (result)
  return result;

 *state = (acpi_state == ACPI_STATE_D3 ? 0 :
   (acpi_state == ACPI_STATE_D0 ? 1 : -1));
 return 0;
}
