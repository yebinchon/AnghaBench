
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int ENODEV ;
 int dev_attr_idlecpus ;
 int dev_attr_idlepct ;
 int dev_attr_rrtime ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int acpi_pad_add_sysfs(struct acpi_device *device)
{
 int result;

 result = device_create_file(&device->dev, &dev_attr_idlecpus);
 if (result)
  return -ENODEV;
 result = device_create_file(&device->dev, &dev_attr_idlepct);
 if (result) {
  device_remove_file(&device->dev, &dev_attr_idlecpus);
  return -ENODEV;
 }
 result = device_create_file(&device->dev, &dev_attr_rrtime);
 if (result) {
  device_remove_file(&device->dev, &dev_attr_idlecpus);
  device_remove_file(&device->dev, &dev_attr_idlepct);
  return -ENODEV;
 }
 return 0;
}
