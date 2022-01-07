
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;


 int ACER_CAP_THREEG ;
 int ENOMEM ;
 TYPE_1__* acer_platform_device ;
 int dev_attr_interface ;
 int dev_attr_threeg ;
 int device_create_file (int *,int *) ;
 scalar_t__ has_cap (int ) ;
 int remove_sysfs (TYPE_1__*) ;

__attribute__((used)) static int create_sysfs(void)
{
 int retval = -ENOMEM;

 if (has_cap(ACER_CAP_THREEG)) {
  retval = device_create_file(&acer_platform_device->dev,
   &dev_attr_threeg);
  if (retval)
   goto error_sysfs;
 }

 retval = device_create_file(&acer_platform_device->dev,
  &dev_attr_interface);
 if (retval)
  goto error_sysfs;

 return 0;

error_sysfs:
  remove_sysfs(acer_platform_device);
 return retval;
}
