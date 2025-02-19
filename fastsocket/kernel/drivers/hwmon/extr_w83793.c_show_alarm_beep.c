
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83793_data {int* alarms; int* beeps; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ALARM_STATUS ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83793_data* w83793_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_alarm_beep(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83793_data *data = w83793_update_device(dev);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index >> 3;
 int bit = sensor_attr->index & 0x07;
 u8 val;

 if (ALARM_STATUS == nr) {
  val = (data->alarms[index] >> (bit)) & 1;
 } else {
  val = (data->beeps[index] >> (bit)) & 1;
 }

 return sprintf(buf, "%u\n", val);
}
