
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dev; } ;


 int ENODEV ;
 int WARN_ON (int) ;
 int device_attach (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int device_release_driver (int *) ;

__attribute__((used)) static void ccw_device_do_unbind_bind(struct ccw_device *cdev)
{
 int ret;

 if (device_is_registered(&cdev->dev)) {
  device_release_driver(&cdev->dev);
  ret = device_attach(&cdev->dev);
  WARN_ON(ret == -ENODEV);
 }
}
