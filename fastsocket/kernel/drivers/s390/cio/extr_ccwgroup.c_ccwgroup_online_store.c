
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int driver; } ;
struct ccwgroup_driver {int owner; } ;
struct ccwgroup_device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 int ccwgroup_set_offline (struct ccwgroup_device*) ;
 int ccwgroup_set_online (struct ccwgroup_device*) ;
 int module_put (int ) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;
 struct ccwgroup_driver* to_ccwgroupdrv (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static ssize_t
ccwgroup_online_store (struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct ccwgroup_device *gdev;
 struct ccwgroup_driver *gdrv;
 unsigned long value;
 int ret;

 if (!dev->driver)
  return -ENODEV;

 gdev = to_ccwgroupdev(dev);
 gdrv = to_ccwgroupdrv(dev->driver);

 if (!try_module_get(gdrv->owner))
  return -EINVAL;

 ret = strict_strtoul(buf, 0, &value);
 if (ret)
  goto out;

 if (value == 1)
  ret = ccwgroup_set_online(gdev);
 else if (value == 0)
  ret = ccwgroup_set_offline(gdev);
 else
  ret = -EINVAL;
out:
 module_put(gdrv->owner);
 return (ret == 0) ? count : ret;
}
