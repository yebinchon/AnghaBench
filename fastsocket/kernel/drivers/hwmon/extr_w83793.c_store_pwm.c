
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83793_data {int* pwm_stop_time; int** pwm; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int PWM_STOP_TIME ;
 int SENSORS_LIMIT (int ,int ,int) ;
 int TIME_TO_REG (int ) ;
 int W83793_REG_PWM (int,int) ;
 int W83793_REG_PWM_STOP_TIME (int) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_pwm(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 u8 val;

 mutex_lock(&data->update_lock);
 if (PWM_STOP_TIME == nr) {
  val = TIME_TO_REG(simple_strtoul(buf, ((void*)0), 10));
  data->pwm_stop_time[index] = val;
  w83793_write_value(client, W83793_REG_PWM_STOP_TIME(index),
       val);
 } else {
  val = SENSORS_LIMIT(simple_strtoul(buf, ((void*)0), 10), 0, 0xff)
        >> 2;
  data->pwm[index][nr] =
      w83793_read_value(client, W83793_REG_PWM(index, nr)) & 0xc0;
  data->pwm[index][nr] |= val;
  w83793_write_value(client, W83793_REG_PWM(index, nr),
       data->pwm[index][nr]);
 }

 mutex_unlock(&data->update_lock);
 return count;
}
