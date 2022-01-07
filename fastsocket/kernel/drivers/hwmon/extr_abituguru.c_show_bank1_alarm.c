
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {int* alarms; int** bank1_settings; } ;
typedef int ssize_t ;


 int EIO ;
 struct abituguru_data* abituguru_update_device (struct device*) ;
 int sprintf (char*,char*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_bank1_alarm(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru_data *data = abituguru_update_device(dev);
 if (!data)
  return -EIO;





 if ((data->alarms[attr->index / 8] & (0x01 << (attr->index % 8))) &&
   (data->bank1_settings[attr->index][0] & attr->nr))
  return sprintf(buf, "1\n");
 else
  return sprintf(buf, "0\n");
}
