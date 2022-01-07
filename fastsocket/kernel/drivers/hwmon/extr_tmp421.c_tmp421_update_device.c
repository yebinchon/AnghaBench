
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp421_data {int valid; int config; int channels; int* temp; int update_lock; scalar_t__ last_updated; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int HZ ;
 int TMP421_CONFIG_REG_1 ;
 int * TMP421_TEMP_LSB ;
 int * TMP421_TEMP_MSB ;
 struct tmp421_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct tmp421_data *tmp421_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct tmp421_data *data = i2c_get_clientdata(client);
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + 2 * HZ) || !data->valid) {
  data->config = i2c_smbus_read_byte_data(client,
   TMP421_CONFIG_REG_1);

  for (i = 0; i < data->channels; i++) {
   data->temp[i] = i2c_smbus_read_byte_data(client,
    TMP421_TEMP_MSB[i]) << 8;
   data->temp[i] |= i2c_smbus_read_byte_data(client,
    TMP421_TEMP_LSB[i]);
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
