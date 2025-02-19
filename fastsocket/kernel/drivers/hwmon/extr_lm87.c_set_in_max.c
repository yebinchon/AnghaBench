
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm87_data {int update_lock; int * in_max; int * in_scale; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int IN_TO_REG (long,int ) ;
 int LM87_REG_AIN_MAX (int) ;
 int LM87_REG_IN_MAX (int) ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm87_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static void set_in_max(struct device *dev, const char *buf, int nr)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm87_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->in_max[nr] = IN_TO_REG(val, data->in_scale[nr]);
 lm87_write_value(client, nr<6 ? LM87_REG_IN_MAX(nr) :
    LM87_REG_AIN_MAX(nr-6), data->in_max[nr]);
 mutex_unlock(&data->update_lock);
}
