
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm80_data {int* fan_min; int* fan_div; int update_lock; } ;
struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int) ;
 size_t EINVAL ;
 unsigned long FAN_FROM_REG (int,int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int LM80_REG_FANDIV ;
 int LM80_REG_FAN_MIN (int) ;
 int dev_err (int *,char*,unsigned long) ;
 struct lm80_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm80_read_value (struct i2c_client*,int ) ;
 int lm80_write_value (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_div(struct device *dev, struct device_attribute *attr,
 const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct lm80_data *data = i2c_get_clientdata(client);
 unsigned long min, val = simple_strtoul(buf, ((void*)0), 10);
 u8 reg;


 mutex_lock(&data->update_lock);
 min = FAN_FROM_REG(data->fan_min[nr],
      DIV_FROM_REG(data->fan_div[nr]));

 switch (val) {
 case 1: data->fan_div[nr] = 0; break;
 case 2: data->fan_div[nr] = 1; break;
 case 4: data->fan_div[nr] = 2; break;
 case 8: data->fan_div[nr] = 3; break;
 default:
  dev_err(&client->dev, "fan_div value %ld not "
   "supported. Choose one of 1, 2, 4 or 8!\n", val);
  mutex_unlock(&data->update_lock);
  return -EINVAL;
 }

 reg = (lm80_read_value(client, LM80_REG_FANDIV) & ~(3 << (2 * (nr + 1))))
     | (data->fan_div[nr] << (2 * (nr + 1)));
 lm80_write_value(client, LM80_REG_FANDIV, reg);


 data->fan_min[nr] = FAN_TO_REG(min, DIV_FROM_REG(data->fan_div[nr]));
 lm80_write_value(client, LM80_REG_FAN_MIN(nr + 1), data->fan_min[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
