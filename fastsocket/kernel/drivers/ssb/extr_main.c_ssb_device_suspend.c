
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_driver {int (* suspend ) (struct ssb_device*,int ) ;} ;
struct ssb_device {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int pm_message_t ;


 struct ssb_device* dev_to_ssb_dev (struct device*) ;
 struct ssb_driver* drv_to_ssb_drv (scalar_t__) ;
 int stub1 (struct ssb_device*,int ) ;

__attribute__((used)) static int ssb_device_suspend(struct device *dev, pm_message_t state)
{
 struct ssb_device *ssb_dev = dev_to_ssb_dev(dev);
 struct ssb_driver *ssb_drv;
 int err = 0;

 if (dev->driver) {
  ssb_drv = drv_to_ssb_drv(dev->driver);
  if (ssb_drv && ssb_drv->suspend)
   err = ssb_drv->suspend(ssb_dev, state);
  if (err)
   goto out;
 }
out:
 return err;
}
