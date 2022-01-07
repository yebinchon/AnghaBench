
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; TYPE_1__* device; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int features; } ;


 int DASD_FEATURE_FAILFAST ;
 size_t EINVAL ;
 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 size_t PTR_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_devmap_from_cdev (int ) ;
 int dasd_devmap_lock ;
 int simple_strtoul (char const*,char**,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t dasd_ff_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct dasd_devmap *devmap;
 int val;
 char *endp;

 devmap = dasd_devmap_from_cdev(to_ccwdev(dev));
 if (IS_ERR(devmap))
  return PTR_ERR(devmap);

 val = simple_strtoul(buf, &endp, 0);
 if (((endp + 1) < (buf + count)) || (val > 1))
  return -EINVAL;

 spin_lock(&dasd_devmap_lock);
 if (val)
  devmap->features |= DASD_FEATURE_FAILFAST;
 else
  devmap->features &= ~DASD_FEATURE_FAILFAST;
 if (devmap->device)
  devmap->device->features = devmap->features;
 spin_unlock(&dasd_devmap_lock);
 return count;
}
