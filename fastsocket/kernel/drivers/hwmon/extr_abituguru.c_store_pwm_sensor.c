
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {unsigned long* bank1_sensors; scalar_t__** pwm_settings; scalar_t__** bank1_address; int update_lock; } ;
typedef size_t ssize_t ;


 scalar_t__ ABIT_UGURU_FAN_PWM ;
 size_t ABIT_UGURU_TEMP_SENSOR ;
 size_t EINVAL ;
 size_t EIO ;
 int abituguru_write (struct abituguru_data*,scalar_t__,size_t,scalar_t__*,int) ;
 struct abituguru_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_pwm_sensor(struct device *dev, struct device_attribute
 *devattr, const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru_data *data = dev_get_drvdata(dev);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10) - 1;
 ssize_t ret = count;

 mutex_lock(&data->update_lock);
 if (val < data->bank1_sensors[ABIT_UGURU_TEMP_SENSOR]) {
  u8 orig_val = data->pwm_settings[attr->index][0];
  u8 address = data->bank1_address[ABIT_UGURU_TEMP_SENSOR][val];
  data->pwm_settings[attr->index][0] &= 0xF0;
  data->pwm_settings[attr->index][0] |= address;
  if (data->pwm_settings[attr->index][0] != orig_val) {
   if (abituguru_write(data, ABIT_UGURU_FAN_PWM + 1,
     attr->index,
     data->pwm_settings[attr->index],
     5) < 1) {
    data->pwm_settings[attr->index][0] = orig_val;
    ret = -EIO;
   }
  }
 }
 else
  ret = -EINVAL;
 mutex_unlock(&data->update_lock);
 return ret;
}
