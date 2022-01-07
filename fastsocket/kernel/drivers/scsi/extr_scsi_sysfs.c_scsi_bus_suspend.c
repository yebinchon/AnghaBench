
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct device_driver {int (* suspend ) (struct device*,int ) ;} ;
struct device {struct device_driver* driver; int * type; } ;
typedef int pm_message_t ;


 int scsi_dev_type ;
 int scsi_device_quiesce (struct scsi_device*) ;
 int stub1 (struct device*,int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int scsi_bus_suspend(struct device * dev, pm_message_t state)
{
 struct device_driver *drv;
 struct scsi_device *sdev;
 int err;

 if (dev->type != &scsi_dev_type)
  return 0;

 drv = dev->driver;
 sdev = to_scsi_device(dev);

 err = scsi_device_quiesce(sdev);
 if (err)
  return err;

 if (drv && drv->suspend) {
  err = drv->suspend(dev, state);
  if (err)
   return err;
 }

 return 0;
}
