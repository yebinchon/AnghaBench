
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FANS_MANUAL ;
 int applesmc_lock ;
 int applesmc_read_key (int ,int*,int) ;
 int applesmc_write_key (int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_store_fan_manual(struct device *dev,
      struct device_attribute *devattr,
      const char *sysfsbuf, size_t count)
{
 int ret;
 u8 buffer[2];
 u32 input;
 u16 val;
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 input = simple_strtoul(sysfsbuf, ((void*)0), 10);

 mutex_lock(&applesmc_lock);

 ret = applesmc_read_key(FANS_MANUAL, buffer, 2);
 val = (buffer[0] << 8 | buffer[1]);
 if (ret)
  goto out;

 if (input)
  val = val | (0x01 << attr->index);
 else
  val = val & ~(0x01 << attr->index);

 buffer[0] = (val >> 8) & 0xFF;
 buffer[1] = val & 0xFF;

 ret = applesmc_write_key(FANS_MANUAL, buffer, 2);

out:
 mutex_unlock(&applesmc_lock);
 if (ret)
  return ret;
 else
  return count;
}
