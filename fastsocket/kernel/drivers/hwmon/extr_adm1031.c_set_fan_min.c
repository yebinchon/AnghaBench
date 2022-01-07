
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int* fan_min; int update_lock; int * fan_div; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int ADM1031_REG_FAN_MIN (int) ;
 int FAN_DIV_FROM_REG (int ) ;
 int FAN_TO_REG (int,int ) ;
 int adm1031_write_value (struct i2c_client*,int ,int) ;
 struct adm1031_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_min(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1031_data *data = i2c_get_clientdata(client);
 int nr = to_sensor_dev_attr(attr)->index;
 int val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 if (val) {
  data->fan_min[nr] =
   FAN_TO_REG(val, FAN_DIV_FROM_REG(data->fan_div[nr]));
 } else {
  data->fan_min[nr] = 0xff;
 }
 adm1031_write_value(client, ADM1031_REG_FAN_MIN(nr), data->fan_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
