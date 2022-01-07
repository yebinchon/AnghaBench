
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valid; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;
struct acpi_device {TYPE_2__ wakeup; } ;
typedef int acpi_handle ;


 int acpi_bus_get_device (int ,struct acpi_device**) ;

bool acpi_bus_can_wakeup(acpi_handle handle)
{
 struct acpi_device *device;
 int result;

 result = acpi_bus_get_device(handle, &device);
 return result ? 0 : device->wakeup.flags.valid;
}
