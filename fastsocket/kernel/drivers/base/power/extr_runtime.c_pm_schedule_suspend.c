
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ request; scalar_t__ runtime_status; scalar_t__ disable_depth; int lock; scalar_t__ timer_expires; int suspend_timer; int usage_count; scalar_t__ request_pending; scalar_t__ runtime_error; } ;
struct device {TYPE_1__ power; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ RPM_REQ_NONE ;
 scalar_t__ RPM_REQ_RESUME ;
 scalar_t__ RPM_SUSPENDED ;
 scalar_t__ RPM_SUSPENDING ;
 int __pm_request_suspend (struct device*) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int pm_children_suspended (struct device*) ;
 int pm_runtime_deactivate_timer (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pm_schedule_suspend(struct device *dev, unsigned int delay)
{
 unsigned long flags;
 int retval = 0;

 spin_lock_irqsave(&dev->power.lock, flags);

 if (dev->power.runtime_error) {
  retval = -EINVAL;
  goto out;
 }

 if (!delay) {
  retval = __pm_request_suspend(dev);
  goto out;
 }

 pm_runtime_deactivate_timer(dev);

 if (dev->power.request_pending) {




  if (dev->power.request == RPM_REQ_RESUME) {
   retval = -EAGAIN;
   goto out;
  }
  dev->power.request = RPM_REQ_NONE;
 }

 if (dev->power.runtime_status == RPM_SUSPENDED)
  retval = 1;
 else if (dev->power.runtime_status == RPM_SUSPENDING)
  retval = -EINPROGRESS;
 else if (atomic_read(&dev->power.usage_count) > 0
     || dev->power.disable_depth > 0)
  retval = -EAGAIN;
 else if (!pm_children_suspended(dev))
  retval = -EBUSY;
 if (retval)
  goto out;

 dev->power.timer_expires = jiffies + msecs_to_jiffies(delay);
 mod_timer(&dev->power.suspend_timer, dev->power.timer_expires);

 out:
 spin_unlock_irqrestore(&dev->power.lock, flags);

 return retval;
}
