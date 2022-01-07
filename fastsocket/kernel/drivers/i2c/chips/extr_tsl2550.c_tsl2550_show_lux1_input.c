
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2550_data {int update_lock; int power_state; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int __tsl2550_show_lux (struct i2c_client*,char*) ;
 struct tsl2550_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t tsl2550_show_lux1_input(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct tsl2550_data *data = i2c_get_clientdata(client);
 int ret;


 if (!data->power_state)
  return -EBUSY;

 mutex_lock(&data->update_lock);
 ret = __tsl2550_show_lux(client, buf);
 mutex_unlock(&data->update_lock);

 return ret;
}
