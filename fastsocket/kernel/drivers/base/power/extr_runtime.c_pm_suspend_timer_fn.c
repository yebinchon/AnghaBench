
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long timer_expires; int lock; } ;
struct device {TYPE_1__ power; } ;


 int __pm_request_suspend (struct device*) ;
 int jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_after (unsigned long,int ) ;

__attribute__((used)) static void pm_suspend_timer_fn(unsigned long data)
{
 struct device *dev = (struct device *)data;
 unsigned long flags;
 unsigned long expires;

 spin_lock_irqsave(&dev->power.lock, flags);

 expires = dev->power.timer_expires;

 if (expires > 0 && !time_after(expires, jiffies)) {
  dev->power.timer_expires = 0;
  __pm_request_suspend(dev);
 }

 spin_unlock_irqrestore(&dev->power.lock, flags);
}
