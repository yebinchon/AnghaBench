
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccwgroup_device {scalar_t__ state; int onoff; } ;
typedef int ssize_t ;


 scalar_t__ CCWGROUP_OFFLINE ;
 int EAGAIN ;
 int EINVAL ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int atomic_set (int *,int ) ;
 int ccwgroup_ungroup_callback ;
 int device_schedule_callback (struct device*,int ) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;

__attribute__((used)) static ssize_t
ccwgroup_ungroup_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct ccwgroup_device *gdev;
 int rc;

 gdev = to_ccwgroupdev(dev);


 if (atomic_cmpxchg(&gdev->onoff, 0, 1) != 0)
  return -EAGAIN;
 if (gdev->state != CCWGROUP_OFFLINE) {
  rc = -EINVAL;
  goto out;
 }



 rc = device_schedule_callback(dev, ccwgroup_ungroup_callback);
out:
 if (rc) {
  if (rc != -EAGAIN)

   atomic_set(&gdev->onoff, 0);
  return rc;
 }
 return count;
}
