
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int * bus; } ;
struct ccw_device {TYPE_2__* private; struct device dev; } ;
struct TYPE_3__ {int devno; int ssid; } ;
struct TYPE_4__ {TYPE_1__ dev_id; } ;


 int ccw_bus_type ;
 int dev_set_name (struct device*,char*,int ,int ) ;
 int device_add (struct device*) ;

__attribute__((used)) static int ccw_device_register(struct ccw_device *cdev)
{
 struct device *dev = &cdev->dev;
 int ret;

 dev->bus = &ccw_bus_type;
 ret = dev_set_name(&cdev->dev, "0.%x.%04x", cdev->private->dev_id.ssid,
      cdev->private->dev_id.devno);
 if (ret)
  return ret;
 return device_add(dev);
}
