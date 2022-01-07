
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_err (struct device*,char*,unsigned int) ;
 size_t i2400m_set_idle_timeout (struct i2400m*,unsigned int) ;
 struct i2400m* net_dev_to_i2400m (int ) ;
 int sscanf (char const*,char*,unsigned int*) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static
ssize_t i2400m_idle_timeout_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t size)
{
 ssize_t result;
 struct i2400m *i2400m = net_dev_to_i2400m(to_net_dev(dev));
 unsigned val;

 result = -EINVAL;
 if (sscanf(buf, "%u\n", &val) != 1)
  goto error_no_unsigned;
 if (val != 0 && (val < 100 || val > 300000 || val % 100 != 0)) {
  dev_err(dev, "idle_timeout: %u: invalid msecs specification; "
   "valid values are 0, 100-300000 in 100 increments\n",
   val);
  goto error_bad_value;
 }
 result = i2400m_set_idle_timeout(i2400m, val);
 if (result >= 0)
  result = size;
error_no_unsigned:
error_bad_value:
 return result;
}
