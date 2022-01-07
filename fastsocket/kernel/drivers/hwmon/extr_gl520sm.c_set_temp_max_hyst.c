
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct gl520_data {int update_lock; int * temp_max_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int * GL520_REG_TEMP_MAX_HYST ;
 int TEMP_TO_REG (long) ;
 int gl520_write_value (struct i2c_client*,int ,int ) ;
 struct gl520_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_max_hyst(struct device *dev, struct device_attribute
     *attr, const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct gl520_data *data = i2c_get_clientdata(client);
 int n = to_sensor_dev_attr(attr)->index;
 long v = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->temp_max_hyst[n] = TEMP_TO_REG(v);
 gl520_write_value(client, GL520_REG_TEMP_MAX_HYST[n],
     data->temp_max_hyst[n]);
 mutex_unlock(&data->update_lock);
 return count;
}
