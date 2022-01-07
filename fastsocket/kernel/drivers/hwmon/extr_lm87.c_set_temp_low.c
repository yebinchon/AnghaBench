
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm87_data {int update_lock; int * temp_low; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int * LM87_REG_TEMP_LOW ;
 int TEMP_TO_REG (long) ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm87_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static void set_temp_low(struct device *dev, const char *buf, int nr)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm87_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->temp_low[nr] = TEMP_TO_REG(val);
 lm87_write_value(client, LM87_REG_TEMP_LOW[nr], data->temp_low[nr]);
 mutex_unlock(&data->update_lock);
}
