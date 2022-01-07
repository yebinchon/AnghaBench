
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct ccw_device {int dev; } ;


 int ENODEV ;
 struct dasd_device* ERR_PTR (int ) ;
 int dasd_get_device (struct dasd_device*) ;
 struct dasd_device* dev_get_drvdata (int *) ;

struct dasd_device *
dasd_device_from_cdev_locked(struct ccw_device *cdev)
{
 struct dasd_device *device = dev_get_drvdata(&cdev->dev);

 if (!device)
  return ERR_PTR(-ENODEV);
 dasd_get_device(device);
 return device;
}
