
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_driver {int id_table; } ;
struct TYPE_2__ {int b; } ;
struct hv_device {TYPE_1__ dev_type; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct hv_device* device_to_hv_device (struct device*) ;
 struct hv_driver* drv_to_hv_drv (struct device_driver*) ;
 scalar_t__ hv_vmbus_get_id (int ,int ) ;

__attribute__((used)) static int vmbus_match(struct device *device, struct device_driver *driver)
{
 struct hv_driver *drv = drv_to_hv_drv(driver);
 struct hv_device *hv_dev = device_to_hv_device(device);

 if (hv_vmbus_get_id(drv->id_table, hv_dev->dev_type.b))
  return 1;

 return 0;
}
