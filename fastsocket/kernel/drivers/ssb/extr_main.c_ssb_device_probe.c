
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_driver {int (* probe ) (struct ssb_device*,int *) ;} ;
struct ssb_device {int id; } ;
struct device {int driver; } ;


 struct ssb_device* dev_to_ssb_dev (struct device*) ;
 struct ssb_driver* drv_to_ssb_drv (int ) ;
 int ssb_device_get (struct ssb_device*) ;
 int ssb_device_put (struct ssb_device*) ;
 int stub1 (struct ssb_device*,int *) ;

__attribute__((used)) static int ssb_device_probe(struct device *dev)
{
 struct ssb_device *ssb_dev = dev_to_ssb_dev(dev);
 struct ssb_driver *ssb_drv = drv_to_ssb_drv(dev->driver);
 int err = 0;

 ssb_device_get(ssb_dev);
 if (ssb_drv && ssb_drv->probe)
  err = ssb_drv->probe(ssb_dev, &ssb_dev->id);
 if (err)
  ssb_device_put(ssb_dev);

 return err;
}
