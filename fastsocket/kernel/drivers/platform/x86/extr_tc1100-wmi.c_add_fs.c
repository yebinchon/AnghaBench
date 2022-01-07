
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int dev_attr_jogdial ;
 int dev_attr_wireless ;
 int device_create_file (int *,int *) ;
 int remove_fs () ;
 TYPE_1__* tc1100_device ;

__attribute__((used)) static int add_fs(void)
{
 int ret;

 ret = device_create_file(&tc1100_device->dev, &dev_attr_wireless);
 if (ret)
  goto add_sysfs_error;

 ret = device_create_file(&tc1100_device->dev, &dev_attr_jogdial);
 if (ret)
  goto add_sysfs_error;

 return ret;

add_sysfs_error:
 remove_fs();
 return ret;
}
