
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int isl29003_set_resolution (struct i2c_client*,unsigned long) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t isl29003_store_resolution(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 unsigned long val;
 int ret;

 if ((strict_strtoul(buf, 10, &val) < 0) || (val > 3))
  return -EINVAL;

 ret = isl29003_set_resolution(client, val);
 if (ret < 0)
  return ret;

 return count;
}
