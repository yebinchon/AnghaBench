
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int update_lock; int * temp_crit; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int ADM1031_REG_TEMP_CRIT (int) ;
 int SENSORS_LIMIT (int,int,int) ;
 int TEMP_TO_REG (int) ;
 int adm1031_write_value (struct i2c_client*,int ,int ) ;
 struct adm1031_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_crit(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1031_data *data = i2c_get_clientdata(client);
 int nr = to_sensor_dev_attr(attr)->index;
 int val;

 val = simple_strtol(buf, ((void*)0), 10);
 val = SENSORS_LIMIT(val, -55000, nr == 0 ? 127750 : 127875);
 mutex_lock(&data->update_lock);
 data->temp_crit[nr] = TEMP_TO_REG(val);
 adm1031_write_value(client, ADM1031_REG_TEMP_CRIT(nr),
       data->temp_crit[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
