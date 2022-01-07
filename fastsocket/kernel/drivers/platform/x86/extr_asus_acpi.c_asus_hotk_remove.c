
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int EINVAL ;
 int acpi_driver_data (struct acpi_device*) ;
 int asus_hotk_remove_fs (struct acpi_device*) ;
 int hotk ;
 int kfree (int ) ;

__attribute__((used)) static int asus_hotk_remove(struct acpi_device *device, int type)
{
 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 asus_hotk_remove_fs(device);

 kfree(hotk);

 return 0;
}
