
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm93_data {int valid; int update_lock; scalar_t__ last_updated; int (* update ) (struct lm93_data*,struct i2c_client*) ;} ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int HZ ;
 struct lm93_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct lm93_data*,struct i2c_client*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct lm93_data *lm93_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm93_data *data = i2c_get_clientdata(client);
 const unsigned long interval = HZ + (HZ / 2);

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + interval) ||
  !data->valid) {

  data->update(data, client);
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);
 return data;
}
