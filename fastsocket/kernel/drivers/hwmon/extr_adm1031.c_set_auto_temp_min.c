
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int update_lock; int * auto_temp; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int ADM1031_REG_AUTO_TEMP (int) ;
 int AUTO_TEMP_MIN_TO_REG (int,int ) ;
 int adm1031_write_value (struct i2c_client*,int ,int ) ;
 struct adm1031_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
set_auto_temp_min(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1031_data *data = i2c_get_clientdata(client);
 int nr = to_sensor_dev_attr(attr)->index;
 int val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->auto_temp[nr] = AUTO_TEMP_MIN_TO_REG(val, data->auto_temp[nr]);
 adm1031_write_value(client, ADM1031_REG_AUTO_TEMP(nr),
       data->auto_temp[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
