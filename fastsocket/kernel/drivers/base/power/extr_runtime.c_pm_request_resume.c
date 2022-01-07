
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct device {TYPE_1__ power; } ;


 int __pm_request_resume (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pm_request_resume(struct device *dev)
{
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&dev->power.lock, flags);
 retval = __pm_request_resume(dev);
 spin_unlock_irqrestore(&dev->power.lock, flags);

 return retval;
}
