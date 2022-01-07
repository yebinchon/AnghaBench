
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * acpi_handle; } ;
struct device {TYPE_2__ archdata; int kobj; } ;
struct TYPE_3__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;


 int acpi_bus_get_device (int *,struct acpi_device**) ;
 int acpi_detach_data (int *,int ) ;
 struct device* acpi_get_physical_device (int *) ;
 int acpi_glue_data_handler ;
 int dev_err (struct device*,char*) ;
 int put_device (struct device*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int acpi_unbind_one(struct device *dev)
{
 if (!dev->archdata.acpi_handle)
  return 0;
 if (dev == acpi_get_physical_device(dev->archdata.acpi_handle)) {
  struct acpi_device *acpi_dev;


  put_device(dev);

  if (!acpi_bus_get_device(dev->archdata.acpi_handle,
     &acpi_dev)) {
   sysfs_remove_link(&dev->kobj, "firmware_node");
   sysfs_remove_link(&acpi_dev->dev.kobj, "physical_node");
  }

  acpi_detach_data(dev->archdata.acpi_handle,
     acpi_glue_data_handler);
  dev->archdata.acpi_handle = ((void*)0);

  put_device(dev);
 } else {
  dev_err(dev, "Oops, 'acpi_handle' corrupt\n");
 }
 return 0;
}
