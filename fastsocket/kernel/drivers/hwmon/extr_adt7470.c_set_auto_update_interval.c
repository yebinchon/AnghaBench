
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long auto_update_interval; int lock; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 long SENSORS_LIMIT (long,int ,int) ;
 struct adt7470_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_auto_update_interval(struct device *dev,
     struct device_attribute *devattr,
     const char *buf,
     size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7470_data *data = i2c_get_clientdata(client);
 long temp;

 if (strict_strtol(buf, 10, &temp))
  return -EINVAL;

 temp = SENSORS_LIMIT(temp, 0, 60000);

 mutex_lock(&data->lock);
 data->auto_update_interval = temp;
 mutex_unlock(&data->lock);

 return count;
}
