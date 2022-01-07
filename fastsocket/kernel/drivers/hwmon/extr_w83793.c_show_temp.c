
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {int temp_low_bits; int ** temp; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 long TEMP_FROM_REG (int ) ;
 int TEMP_READ ;
 int sprintf (char*,char*,long) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83793_data* w83793_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_temp(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct w83793_data *data = w83793_update_device(dev);
 long temp = TEMP_FROM_REG(data->temp[index][nr]);

 if (TEMP_READ == nr && index < 4) {
  int low = ((data->temp_low_bits >> (index * 2)) & 0x03) * 250;
  temp += temp > 0 ? low : -low;
 }
 return sprintf(buf, "%ld\n", temp);
}
