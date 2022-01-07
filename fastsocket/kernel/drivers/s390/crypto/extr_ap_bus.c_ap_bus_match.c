
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ap_driver {struct ap_device_id* ids; } ;
struct ap_device_id {int match_flags; scalar_t__ dev_type; } ;
struct ap_device {scalar_t__ device_type; } ;


 int AP_DEVICE_ID_MATCH_DEVICE_TYPE ;
 struct ap_device* to_ap_dev (struct device*) ;
 struct ap_driver* to_ap_drv (struct device_driver*) ;

__attribute__((used)) static int ap_bus_match(struct device *dev, struct device_driver *drv)
{
 struct ap_device *ap_dev = to_ap_dev(dev);
 struct ap_driver *ap_drv = to_ap_drv(drv);
 struct ap_device_id *id;





 for (id = ap_drv->ids; id->match_flags; id++) {
  if ((id->match_flags & AP_DEVICE_ID_MATCH_DEVICE_TYPE) &&
      (id->dev_type != ap_dev->device_type))
   continue;
  return 1;
 }
 return 0;
}
