
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct acpi_ac {unsigned int state; TYPE_2__ charger; } ;
struct TYPE_3__ {int kobj; } ;


 int EINVAL ;
 int KOBJ_CHANGE ;
 scalar_t__ acpi_ac_get_state (struct acpi_ac*) ;
 struct acpi_ac* acpi_driver_data (struct acpi_device*) ;
 int kobject_uevent (int *,int ) ;

__attribute__((used)) static int acpi_ac_resume(struct acpi_device *device)
{
 struct acpi_ac *ac;
 unsigned old_state;
 if (!device || !acpi_driver_data(device))
  return -EINVAL;
 ac = acpi_driver_data(device);
 old_state = ac->state;
 if (acpi_ac_get_state(ac))
  return 0;




 return 0;
}
