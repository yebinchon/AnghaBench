
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm87_data {int* fan_min; int* fan_div; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int FAN_DIV_FROM_REG (int) ;
 unsigned long FAN_FROM_REG (int,int ) ;
 int FAN_TO_REG (unsigned long,long) ;
 int LM87_REG_FAN_MIN (int) ;
 int LM87_REG_VID_FAN_DIV ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm87_read_value (struct i2c_client*,int ) ;
 int lm87_write_value (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_fan_div(struct device *dev, const char *buf,
  size_t count, int nr)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm87_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);
 unsigned long min;
 u8 reg;

 mutex_lock(&data->update_lock);
 min = FAN_FROM_REG(data->fan_min[nr],
      FAN_DIV_FROM_REG(data->fan_div[nr]));

 switch (val) {
 case 1: data->fan_div[nr] = 0; break;
 case 2: data->fan_div[nr] = 1; break;
 case 4: data->fan_div[nr] = 2; break;
 case 8: data->fan_div[nr] = 3; break;
 default:
  mutex_unlock(&data->update_lock);
  return -EINVAL;
 }

 reg = lm87_read_value(client, LM87_REG_VID_FAN_DIV);
 switch (nr) {
 case 0:
     reg = (reg & 0xCF) | (data->fan_div[0] << 4);
     break;
 case 1:
     reg = (reg & 0x3F) | (data->fan_div[1] << 6);
     break;
 }
 lm87_write_value(client, LM87_REG_VID_FAN_DIV, reg);

 data->fan_min[nr] = FAN_TO_REG(min, val);
 lm87_write_value(client, LM87_REG_FAN_MIN(nr),
    data->fan_min[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
