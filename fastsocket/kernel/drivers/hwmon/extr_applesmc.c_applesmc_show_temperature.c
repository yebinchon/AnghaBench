
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int applesmc_lock ;
 int applesmc_read_key (char const*,int*,int) ;
 size_t applesmc_temperature_set ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;
 char*** temperature_sensors_sets ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_show_temperature(struct device *dev,
   struct device_attribute *devattr, char *sysfsbuf)
{
 int ret;
 u8 buffer[2];
 unsigned int temp;
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 const char* key =
  temperature_sensors_sets[applesmc_temperature_set][attr->index];

 mutex_lock(&applesmc_lock);

 ret = applesmc_read_key(key, buffer, 2);
 temp = buffer[0]*1000;
 temp += (buffer[1] >> 6) * 250;

 mutex_unlock(&applesmc_lock);

 if (ret)
  return ret;
 else
  return snprintf(sysfsbuf, PAGE_SIZE, "%u\n", temp);
}
