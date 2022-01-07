
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sensor_device_attribute_2 {size_t nr; char index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int applesmc_lock ;
 int applesmc_write_key (char*,int*,int) ;
 char** fan_speed_keys ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_store_fan_speed(struct device *dev,
     struct device_attribute *attr,
     const char *sysfsbuf, size_t count)
{
 int ret;
 u32 speed;
 char newkey[5];
 u8 buffer[2];
 struct sensor_device_attribute_2 *sensor_attr =
      to_sensor_dev_attr_2(attr);

 speed = simple_strtoul(sysfsbuf, ((void*)0), 10);

 if (speed > 0x4000)
  return -EINVAL;

 newkey[0] = fan_speed_keys[sensor_attr->nr][0];
 newkey[1] = '0' + sensor_attr->index;
 newkey[2] = fan_speed_keys[sensor_attr->nr][2];
 newkey[3] = fan_speed_keys[sensor_attr->nr][3];
 newkey[4] = 0;

 mutex_lock(&applesmc_lock);

 buffer[0] = (speed >> 6) & 0xff;
 buffer[1] = (speed << 2) & 0xff;
 ret = applesmc_write_key(newkey, buffer, 2);

 mutex_unlock(&applesmc_lock);
 if (ret)
  return ret;
 else
  return count;
}
