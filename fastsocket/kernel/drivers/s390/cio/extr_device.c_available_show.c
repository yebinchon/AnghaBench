
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int lpm; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
struct ccw_device {TYPE_1__* private; } ;
typedef int ssize_t ;
struct TYPE_2__ {int state; } ;






 scalar_t__ ccw_device_is_orphan (struct ccw_device*) ;
 int sprintf (char*,char*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static ssize_t
available_show (struct device *dev, struct device_attribute *attr, char *buf)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct subchannel *sch;

 if (ccw_device_is_orphan(cdev))
  return sprintf(buf, "no device\n");
 switch (cdev->private->state) {
 case 131:
  return sprintf(buf, "boxed\n");
 case 130:
 case 129:
 case 128:
  sch = to_subchannel(dev->parent);
  if (!sch->lpm)
   return sprintf(buf, "no path\n");
  else
   return sprintf(buf, "no device\n");
 default:

  return sprintf(buf, "good\n");
 }
}
