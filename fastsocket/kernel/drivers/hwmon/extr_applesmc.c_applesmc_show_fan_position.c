
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct sensor_device_attribute_2 {char index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* FAN_POSITION ;
 int PAGE_SIZE ;
 int applesmc_lock ;
 int applesmc_read_key (char*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,char*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_show_fan_position(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 int ret;
 char newkey[5];
 u8 buffer[17];
 struct sensor_device_attribute_2 *sensor_attr =
      to_sensor_dev_attr_2(attr);

 newkey[0] = FAN_POSITION[0];
 newkey[1] = '0' + sensor_attr->index;
 newkey[2] = FAN_POSITION[2];
 newkey[3] = FAN_POSITION[3];
 newkey[4] = 0;

 mutex_lock(&applesmc_lock);

 ret = applesmc_read_key(newkey, buffer, 16);
 buffer[16] = 0;

 mutex_unlock(&applesmc_lock);
 if (ret)
  return ret;
 else
  return snprintf(sysfsbuf, PAGE_SIZE, "%s\n", buffer+4);
}
