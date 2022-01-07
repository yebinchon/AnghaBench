
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ runtime_status; scalar_t__ disable_depth; int request_pending; int work; void* request; scalar_t__ runtime_error; } ;
struct device {TYPE_1__ power; } ;


 int EAGAIN ;
 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ RPM_ACTIVE ;
 void* RPM_REQ_NONE ;
 void* RPM_REQ_RESUME ;
 scalar_t__ RPM_RESUMING ;
 int pm_runtime_deactivate_timer (struct device*) ;
 int pm_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int __pm_request_resume(struct device *dev)
{
 int retval = 0;

 if (dev->power.runtime_error)
  return -EINVAL;

 if (dev->power.runtime_status == RPM_ACTIVE)
  retval = 1;
 else if (dev->power.runtime_status == RPM_RESUMING)
  retval = -EINPROGRESS;
 else if (dev->power.disable_depth > 0)
  retval = -EAGAIN;
 if (retval < 0)
  return retval;

 pm_runtime_deactivate_timer(dev);

 if (dev->power.request_pending) {

  dev->power.request = retval ? RPM_REQ_NONE : RPM_REQ_RESUME;
  return retval;
 } else if (retval) {
  return retval;
 }

 dev->power.request = RPM_REQ_RESUME;
 dev->power.request_pending = 1;
 queue_work(pm_wq, &dev->power.work);

 return retval;
}
