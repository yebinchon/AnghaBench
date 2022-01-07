
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disable_depth; scalar_t__ request; int lock; scalar_t__ request_pending; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ RPM_REQ_RESUME ;
 int __pm_runtime_barrier (struct device*) ;
 int __pm_runtime_resume (struct device*,int) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void __pm_runtime_disable(struct device *dev, bool check_resume)
{
 spin_lock_irq(&dev->power.lock);

 if (dev->power.disable_depth > 0) {
  dev->power.disable_depth++;
  goto out;
 }






 if (check_resume && dev->power.request_pending
     && dev->power.request == RPM_REQ_RESUME) {




  pm_runtime_get_noresume(dev);

  __pm_runtime_resume(dev, 0);

  pm_runtime_put_noidle(dev);
 }

 if (!dev->power.disable_depth++)
  __pm_runtime_barrier(dev);

 out:
 spin_unlock_irq(&dev->power.lock);
}
