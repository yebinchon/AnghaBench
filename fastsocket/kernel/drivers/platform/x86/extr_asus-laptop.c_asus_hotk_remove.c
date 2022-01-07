
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* name; } ;


 int EINVAL ;
 int acpi_driver_data (struct acpi_device*) ;
 TYPE_1__* hotk ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static int asus_hotk_remove(struct acpi_device *device, int type)
{
 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 kfree(hotk->name);
 kfree(hotk);

 return 0;
}
