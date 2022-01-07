
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; TYPE_1__* device; } ;
typedef int ssize_t ;
struct TYPE_2__ {int features; } ;


 int DASD_FEATURE_FAILONSLCK ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 int PTR_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_devmap_from_cdev (int ) ;
 int dasd_devmap_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sysfs_streq (char*,char const*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t dasd_reservation_policy_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct dasd_devmap *devmap;
 int rc;

 devmap = dasd_devmap_from_cdev(to_ccwdev(dev));
 if (IS_ERR(devmap))
  return PTR_ERR(devmap);
 rc = 0;
 spin_lock(&dasd_devmap_lock);
 if (sysfs_streq("ignore", buf))
  devmap->features &= ~DASD_FEATURE_FAILONSLCK;
 else if (sysfs_streq("fail", buf))
  devmap->features |= DASD_FEATURE_FAILONSLCK;
 else
  rc = -EINVAL;
 if (devmap->device)
  devmap->device->features = devmap->features;
 spin_unlock(&dasd_devmap_lock);
 if (rc)
  return rc;
 else
  return count;
}
