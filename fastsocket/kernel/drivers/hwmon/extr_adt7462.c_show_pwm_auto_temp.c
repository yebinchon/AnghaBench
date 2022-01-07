
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int* pwm_cfg; } ;
typedef int ssize_t ;


 int ADT7462_PWM_CHANNEL_SHIFT ;
 struct adt7462_data* adt7462_update_device (struct device*) ;
 int sprintf (char*,char*,...) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_auto_temp(struct device *dev,
      struct device_attribute *devattr,
      char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7462_data *data = adt7462_update_device(dev);
 int channel = data->pwm_cfg[attr->index] >> ADT7462_PWM_CHANNEL_SHIFT;

 switch (channel) {
 case 0:
 case 1:
 case 2:
 case 3:
  return sprintf(buf, "%d\n", (1 << channel));
 case 5:
  return sprintf(buf, "9\n");
 case 6:
  return sprintf(buf, "15\n");
 default:
  return sprintf(buf, "0\n");
 }
}
