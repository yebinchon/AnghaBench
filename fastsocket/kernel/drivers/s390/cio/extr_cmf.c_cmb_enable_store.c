
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef int ssize_t ;


 int disable_cmf (struct ccw_device*) ;
 int enable_cmf (struct ccw_device*) ;
 int strict_strtoul (char const*,int,unsigned long*) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t cmb_enable_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t c)
{
 struct ccw_device *cdev;
 int ret;
 unsigned long val;

 ret = strict_strtoul(buf, 16, &val);
 if (ret)
  return ret;

 cdev = to_ccwdev(dev);

 switch (val) {
 case 0:
  ret = disable_cmf(cdev);
  break;
 case 1:
  ret = enable_cmf(cdev);
  break;
 }

 return c;
}
