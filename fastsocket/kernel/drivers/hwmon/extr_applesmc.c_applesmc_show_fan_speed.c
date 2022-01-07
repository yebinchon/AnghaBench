
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute_2 {size_t nr; char index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int applesmc_lock ;
 int applesmc_read_key (char*,int*,int) ;
 char** fan_speed_keys ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_show_fan_speed(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 int ret;
 unsigned int speed = 0;
 char newkey[5];
 u8 buffer[2];
 struct sensor_device_attribute_2 *sensor_attr =
      to_sensor_dev_attr_2(attr);

 newkey[0] = fan_speed_keys[sensor_attr->nr][0];
 newkey[1] = '0' + sensor_attr->index;
 newkey[2] = fan_speed_keys[sensor_attr->nr][2];
 newkey[3] = fan_speed_keys[sensor_attr->nr][3];
 newkey[4] = 0;

 mutex_lock(&applesmc_lock);

 ret = applesmc_read_key(newkey, buffer, 2);
 speed = ((buffer[0] << 8 | buffer[1]) >> 2);

 mutex_unlock(&applesmc_lock);
 if (ret)
  return ret;
 else
  return snprintf(sysfsbuf, PAGE_SIZE, "%u\n", speed);
}
