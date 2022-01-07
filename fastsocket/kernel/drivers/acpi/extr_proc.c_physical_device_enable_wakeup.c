
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {int enabled; } ;
struct TYPE_4__ {TYPE_1__ state; } ;
struct acpi_device {TYPE_2__ wakeup; int handle; } ;


 struct device* acpi_get_physical_device (int ) ;
 scalar_t__ device_can_wakeup (struct device*) ;
 int device_set_wakeup_enable (struct device*,int ) ;

__attribute__((used)) static void physical_device_enable_wakeup(struct acpi_device *adev)
{
 struct device *dev = acpi_get_physical_device(adev->handle);

 if (dev && device_can_wakeup(dev))
  device_set_wakeup_enable(dev, adev->wakeup.state.enabled);
}
