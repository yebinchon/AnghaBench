
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; int device; } ;
typedef size_t ssize_t ;


 int DASD_FEATURE_USEDIAG ;
 int DASD_FEATURE_USERAW ;
 size_t EINVAL ;
 size_t EPERM ;
 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 size_t PTR_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_devmap_from_cdev (int ) ;
 int dasd_devmap_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_use_raw_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct dasd_devmap *devmap;
 ssize_t rc;
 unsigned long val;

 devmap = dasd_devmap_from_cdev(to_ccwdev(dev));
 if (IS_ERR(devmap))
  return PTR_ERR(devmap);

 if ((strict_strtoul(buf, 10, &val) != 0) || val > 1)
  return -EINVAL;

 spin_lock(&dasd_devmap_lock);

 rc = count;
 if (!devmap->device && !(devmap->features & DASD_FEATURE_USEDIAG)) {
  if (val)
   devmap->features |= DASD_FEATURE_USERAW;
  else
   devmap->features &= ~DASD_FEATURE_USERAW;
 } else
  rc = -EPERM;
 spin_unlock(&dasd_devmap_lock);
 return rc;
}
