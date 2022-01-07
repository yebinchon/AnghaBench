
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru3_sensor_info {size_t port; int multiplier; int divisor; int offset; scalar_t__ type; } ;
struct abituguru3_data {int** settings; int* value; struct abituguru3_sensor_info* sensors; } ;
typedef int ssize_t ;


 scalar_t__ ABIT_UGURU3_TEMP_SENSOR ;
 int EIO ;
 struct abituguru3_data* abituguru3_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_value(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 int value;
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru3_data *data = abituguru3_update_device(dev);
 const struct abituguru3_sensor_info *sensor;

 if (!data)
  return -EIO;

 sensor = &data->sensors[attr->index];


 if (attr->nr)
  value = data->settings[sensor->port][attr->nr];
 else
  value = data->value[sensor->port];


 value = (value * sensor->multiplier) / sensor->divisor +
  sensor->offset;



 if (sensor->type == ABIT_UGURU3_TEMP_SENSOR)
  value *= 1000;

 return sprintf(buf, "%d\n", value);
}
