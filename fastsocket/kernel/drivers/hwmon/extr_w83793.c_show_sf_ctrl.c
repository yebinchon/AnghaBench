
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w83793_data {int* temp_fan_map; int pwm_enable; int* temp_cruise; int* tolerance; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_CRUISE ;
 int TEMP_FAN_MAP ;
 int TEMP_FROM_REG (int) ;
 int TEMP_PWM_ENABLE ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83793_data* w83793_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_sf_ctrl(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct w83793_data *data = w83793_update_device(dev);
 u32 val;

 if (TEMP_FAN_MAP == nr) {
  val = data->temp_fan_map[index];
 } else if (TEMP_PWM_ENABLE == nr) {

  val = ((data->pwm_enable >> index) & 0x01) + 2;
 } else if (TEMP_CRUISE == nr) {
  val = TEMP_FROM_REG(data->temp_cruise[index] & 0x7f);
 } else {
  val = data->tolerance[index >> 1] >> ((index & 0x01) ? 4 : 0);
  val = TEMP_FROM_REG(val & 0x0f);
 }
 return sprintf(buf, "%d\n", val);
}
