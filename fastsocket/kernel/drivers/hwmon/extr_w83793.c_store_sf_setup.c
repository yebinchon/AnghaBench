
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {int pwm_default; int pwm_uptime; int pwm_downtime; int temp_critical; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SENSORS_LIMIT (int ,int ,int) ;
 int SETUP_PWM_DEFAULT ;
 int SETUP_PWM_DOWNTIME ;
 int SETUP_PWM_UPTIME ;
 int TEMP_TO_REG (int ,int ,int) ;
 void* TIME_TO_REG (int ) ;
 int W83793_REG_PWM_DEFAULT ;
 int W83793_REG_PWM_DOWNTIME ;
 int W83793_REG_PWM_UPTIME ;
 int W83793_REG_TEMP_CRITICAL ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_sf_setup(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->update_lock);
 if (SETUP_PWM_DEFAULT == nr) {
  data->pwm_default =
      w83793_read_value(client, W83793_REG_PWM_DEFAULT) & 0xc0;
  data->pwm_default |= SENSORS_LIMIT(simple_strtoul(buf, ((void*)0),
          10),
         0, 0xff) >> 2;
  w83793_write_value(client, W83793_REG_PWM_DEFAULT,
       data->pwm_default);
 } else if (SETUP_PWM_UPTIME == nr) {
  data->pwm_uptime = TIME_TO_REG(simple_strtoul(buf, ((void*)0), 10));
  data->pwm_uptime += data->pwm_uptime == 0 ? 1 : 0;
  w83793_write_value(client, W83793_REG_PWM_UPTIME,
       data->pwm_uptime);
 } else if (SETUP_PWM_DOWNTIME == nr) {
  data->pwm_downtime = TIME_TO_REG(simple_strtoul(buf, ((void*)0), 10));
  data->pwm_downtime += data->pwm_downtime == 0 ? 1 : 0;
  w83793_write_value(client, W83793_REG_PWM_DOWNTIME,
       data->pwm_downtime);
 } else {
  data->temp_critical =
      w83793_read_value(client, W83793_REG_TEMP_CRITICAL) & 0x80;
  data->temp_critical |= TEMP_TO_REG(simple_strtol(buf, ((void*)0), 10),
         0, 0x7f);
  w83793_write_value(client, W83793_REG_TEMP_CRITICAL,
       data->temp_critical);
 }

 mutex_unlock(&data->update_lock);
 return count;
}
