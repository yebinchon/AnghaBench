
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int runtime_status; int lock; scalar_t__ runtime_error; int child_count; int ignore_children; int disable_depth; } ;
struct device {TYPE_1__ power; struct device* parent; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 unsigned int RPM_ACTIVE ;
 unsigned int RPM_SUSPENDED ;
 int SINGLE_DEPTH_NESTING ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_inc (int *) ;
 int pm_request_idle (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int __pm_runtime_set_status(struct device *dev, unsigned int status)
{
 struct device *parent = dev->parent;
 unsigned long flags;
 bool notify_parent = 0;
 int error = 0;

 if (status != RPM_ACTIVE && status != RPM_SUSPENDED)
  return -EINVAL;

 spin_lock_irqsave(&dev->power.lock, flags);

 if (!dev->power.runtime_error && !dev->power.disable_depth) {
  error = -EAGAIN;
  goto out;
 }

 if (dev->power.runtime_status == status)
  goto out_set;

 if (status == RPM_SUSPENDED) {

  if (parent) {
   atomic_add_unless(&parent->power.child_count, -1, 0);
   notify_parent = !parent->power.ignore_children;
  }
  goto out_set;
 }

 if (parent) {
  spin_lock_nested(&parent->power.lock, SINGLE_DEPTH_NESTING);






  if (!parent->power.disable_depth
      && !parent->power.ignore_children
      && parent->power.runtime_status != RPM_ACTIVE) {
   error = -EBUSY;
  } else {
   if (dev->power.runtime_status == RPM_SUSPENDED)
    atomic_inc(&parent->power.child_count);
  }

  spin_unlock(&parent->power.lock);

  if (error)
   goto out;
 }

 out_set:
 dev->power.runtime_status = status;
 dev->power.runtime_error = 0;
 out:
 spin_unlock_irqrestore(&dev->power.lock, flags);

 if (notify_parent)
  pm_request_idle(parent);

 return error;
}
