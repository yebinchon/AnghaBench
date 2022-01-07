
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm85_data {int update_lock; int * temp_max; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ IS_ADT7468_OFF64 (struct lm85_data*) ;
 int LM85_REG_TEMP_MAX (int) ;
 int TEMP_TO_REG (long) ;
 struct lm85_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm85_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_max(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct lm85_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 if (IS_ADT7468_OFF64(data))
  val += 64;

 mutex_lock(&data->update_lock);
 data->temp_max[nr] = TEMP_TO_REG(val);
 lm85_write_value(client, LM85_REG_TEMP_MAX(nr), data->temp_max[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
