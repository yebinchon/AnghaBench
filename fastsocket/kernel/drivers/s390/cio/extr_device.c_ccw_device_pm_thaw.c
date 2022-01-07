
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct subchannel {int lock; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {TYPE_2__* drv; TYPE_1__* private; int online; TYPE_3__ dev; } ;
typedef scalar_t__ addr_t ;
struct TYPE_5__ {int (* thaw ) (struct ccw_device*) ;} ;
struct TYPE_4__ {int * cmb; } ;


 int ccw_set_cmf (struct ccw_device*,int) ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct ccw_device*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static int ccw_device_pm_thaw(struct device *dev)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 int ret, cm_enabled;

 if (!cdev->online)
  return 0;

 spin_lock_irq(sch->lock);

 ret = cio_enable_subchannel(sch, (u32)(addr_t)sch);
 cm_enabled = cdev->private->cmb != ((void*)0);
 spin_unlock_irq(sch->lock);
 if (ret)
  return ret;

 if (cm_enabled) {
  ret = ccw_set_cmf(cdev, 1);
  if (ret)
   return ret;
 }

 if (cdev->drv && cdev->drv->thaw)
  ret = cdev->drv->thaw(cdev);

 return ret;
}
