
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int count; int update_lock; } ;
struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int MAX6650_REG_COUNT ;
 int dev_err (int *,char*,int) ;
 struct max6650_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_div(struct device *dev, struct device_attribute *devattr,
         const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct max6650_data *data = i2c_get_clientdata(client);
 int div = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 switch (div) {
 case 1:
  data->count = 0;
  break;
 case 2:
  data->count = 1;
  break;
 case 4:
  data->count = 2;
  break;
 case 8:
  data->count = 3;
  break;
 default:
  mutex_unlock(&data->update_lock);
  dev_err(&client->dev,
   "illegal value for fan divider (%d)\n", div);
  return -EINVAL;
 }

 i2c_smbus_write_byte_data(client, MAX6650_REG_COUNT, data->count);
 mutex_unlock(&data->update_lock);

 return count;
}
