
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {int* bank1_sensors; int** bank1_address; int** pwm_settings; } ;
typedef int ssize_t ;


 size_t ABIT_UGURU_TEMP_SENSOR ;
 int ENXIO ;
 struct abituguru_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_sensor(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru_data *data = dev_get_drvdata(dev);
 int i;


 for (i = 0; i < data->bank1_sensors[ABIT_UGURU_TEMP_SENSOR]; i++)
  if (data->bank1_address[ABIT_UGURU_TEMP_SENSOR][i] ==
    (data->pwm_settings[attr->index][0] & 0x0F))
   return sprintf(buf, "%d\n", i+1);

 return -ENXIO;
}
