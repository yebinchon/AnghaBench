
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ACER_CAP_THREEG ;
 int dev_attr_interface ;
 int dev_attr_threeg ;
 int device_remove_file (int *,int *) ;
 scalar_t__ has_cap (int ) ;

__attribute__((used)) static int remove_sysfs(struct platform_device *device)
{
 if (has_cap(ACER_CAP_THREEG))
  device_remove_file(&device->dev, &dev_attr_threeg);

 device_remove_file(&device->dev, &dev_attr_interface);

 return 0;
}
