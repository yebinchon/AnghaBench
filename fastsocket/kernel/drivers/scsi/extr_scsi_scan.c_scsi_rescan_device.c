
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_driver {int owner; int (* rescan ) (struct device*) ;} ;
struct device {int driver; } ;


 int module_put (int ) ;
 int stub1 (struct device*) ;
 struct scsi_driver* to_scsi_driver (int ) ;
 scalar_t__ try_module_get (int ) ;

void scsi_rescan_device(struct device *dev)
{
 struct scsi_driver *drv;

 if (!dev->driver)
  return;

 drv = to_scsi_driver(dev->driver);
 if (try_module_get(drv->owner)) {
  if (drv->rescan)
   drv->rescan(dev);
  module_put(drv->owner);
 }
}
