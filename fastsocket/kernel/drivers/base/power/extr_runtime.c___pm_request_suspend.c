
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ runtime_status; scalar_t__ disable_depth; int request_pending; scalar_t__ request; int work; int usage_count; scalar_t__ runtime_error; } ;
struct device {TYPE_1__ power; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ RPM_REQ_NONE ;
 scalar_t__ RPM_REQ_RESUME ;
 scalar_t__ RPM_REQ_SUSPEND ;
 scalar_t__ RPM_SUSPENDED ;
 scalar_t__ RPM_SUSPENDING ;
 scalar_t__ atomic_read (int *) ;
 int pm_children_suspended (struct device*) ;
 int pm_runtime_deactivate_timer (struct device*) ;
 int pm_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int __pm_request_suspend(struct device *dev)
{
 int retval = 0;

 if (dev->power.runtime_error)
  return -EINVAL;

 if (dev->power.runtime_status == RPM_SUSPENDED)
  retval = 1;
 else if (atomic_read(&dev->power.usage_count) > 0
     || dev->power.disable_depth > 0)
  retval = -EAGAIN;
 else if (dev->power.runtime_status == RPM_SUSPENDING)
  retval = -EINPROGRESS;
 else if (!pm_children_suspended(dev))
  retval = -EBUSY;
 if (retval < 0)
  return retval;

 pm_runtime_deactivate_timer(dev);

 if (dev->power.request_pending) {




  if (dev->power.request == RPM_REQ_RESUME)
   retval = -EAGAIN;
  else if (dev->power.request != RPM_REQ_SUSPEND)
   dev->power.request = retval ?
      RPM_REQ_NONE : RPM_REQ_SUSPEND;
  return retval;
 } else if (retval) {
  return retval;
 }

 dev->power.request = RPM_REQ_SUSPEND;
 dev->power.request_pending = 1;
 queue_work(pm_wq, &dev->power.work);

 return 0;
}
