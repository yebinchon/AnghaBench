
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_driver {int (* remove ) (struct hv_device*) ;} ;
struct hv_device {int dummy; } ;
struct device {int driver; } ;


 int dev_name (struct device*) ;
 struct hv_device* device_to_hv_device (struct device*) ;
 struct hv_driver* drv_to_hv_drv (int ) ;
 int pr_err (char*,int ) ;
 int stub1 (struct hv_device*) ;

__attribute__((used)) static int vmbus_remove(struct device *child_device)
{
 struct hv_driver *drv = drv_to_hv_drv(child_device->driver);
 struct hv_device *dev = device_to_hv_device(child_device);

 if (drv->remove)
  drv->remove(dev);
 else
  pr_err("remove not set for driver %s\n",
   dev_name(child_device));

 return 0;
}
