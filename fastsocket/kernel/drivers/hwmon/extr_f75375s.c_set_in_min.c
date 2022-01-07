
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct f75375_data {int* in_min; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int F75375_REG_VOLT_LOW (int) ;
 int SENSORS_LIMIT (int ,int ,int) ;
 int VOLT_TO_REG (int) ;
 int f75375_write8 (struct i2c_client*,int ,int) ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_in_min(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct f75375_data *data = i2c_get_clientdata(client);
 int val = simple_strtoul(buf, ((void*)0), 10);
 val = SENSORS_LIMIT(VOLT_TO_REG(val), 0, 0xff);
 mutex_lock(&data->update_lock);
 data->in_min[nr] = val;
 f75375_write8(client, F75375_REG_VOLT_LOW(nr), data->in_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
