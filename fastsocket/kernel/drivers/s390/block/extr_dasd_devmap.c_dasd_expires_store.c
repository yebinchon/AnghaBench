
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {unsigned long default_expires; } ;
typedef size_t ssize_t ;


 unsigned long DASD_EXPIRES_MAX ;
 size_t EINVAL ;
 size_t ENODEV ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_expires_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct dasd_device *device;
 unsigned long val;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return -ENODEV;

 if ((strict_strtoul(buf, 10, &val) != 0) ||
     (val > DASD_EXPIRES_MAX) || val == 0) {
  dasd_put_device(device);
  return -EINVAL;
 }

 if (val)
  device->default_expires = val;

 dasd_put_device(device);
 return count;
}
