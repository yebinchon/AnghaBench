
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm87_data {int update_lock; int * fan_min; int * fan_div; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int FAN_DIV_FROM_REG (int ) ;
 int FAN_TO_REG (long,int ) ;
 int LM87_REG_FAN_MIN (int) ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm87_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static void set_fan_min(struct device *dev, const char *buf, int nr)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm87_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->fan_min[nr] = FAN_TO_REG(val,
       FAN_DIV_FROM_REG(data->fan_div[nr]));
 lm87_write_value(client, LM87_REG_FAN_MIN(nr), data->fan_min[nr]);
 mutex_unlock(&data->update_lock);
}
