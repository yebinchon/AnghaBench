
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dev; } ;
struct acpi_ac {TYPE_1__ charger; } ;


 int EINVAL ;
 int acpi_ac_remove_fs (struct acpi_device*) ;
 struct acpi_ac* acpi_driver_data (struct acpi_device*) ;
 int kfree (struct acpi_ac*) ;
 int power_supply_unregister (TYPE_1__*) ;

__attribute__((used)) static int acpi_ac_remove(struct acpi_device *device, int type)
{
 struct acpi_ac *ac = ((void*)0);


 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 ac = acpi_driver_data(device);
 kfree(ac);

 return 0;
}
