
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct device {int dummy; } ;
struct adm1029_data {int valid; int update_lock; scalar_t__ last_updated; void** fan_div; void** fan; void** temp; } ;


 int * ADM1029_REG_FAN ;
 int * ADM1029_REG_FAN_DIV ;
 int * ADM1029_REG_TEMP ;
 int ARRAY_SIZE (int *) ;
 int HZ ;
 int dev_dbg (int *,char*) ;
 struct adm1029_data* i2c_get_clientdata (struct i2c_client*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct adm1029_data *adm1029_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1029_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->update_lock);




 if (time_after(jiffies, data->last_updated + HZ * 2)
  || !data->valid) {
  int nr;

  dev_dbg(&client->dev, "Updating adm1029 data\n");

  for (nr = 0; nr < ARRAY_SIZE(ADM1029_REG_TEMP); nr++) {
   data->temp[nr] =
       i2c_smbus_read_byte_data(client,
           ADM1029_REG_TEMP[nr]);
  }
  for (nr = 0; nr < ARRAY_SIZE(ADM1029_REG_FAN); nr++) {
   data->fan[nr] =
       i2c_smbus_read_byte_data(client,
           ADM1029_REG_FAN[nr]);
  }
  for (nr = 0; nr < ARRAY_SIZE(ADM1029_REG_FAN_DIV); nr++) {
   data->fan_div[nr] =
       i2c_smbus_read_byte_data(client,
           ADM1029_REG_FAN_DIV[nr]);
  }

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
