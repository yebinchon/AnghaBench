
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct gl518_data {unsigned long* fan_div; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int GL518_REG_MISC ;
 int dev_err (struct device*,char*,unsigned long) ;
 int gl518_read_value (struct i2c_client*,int ) ;
 int gl518_write_value (struct i2c_client*,int ,int) ;
 struct gl518_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_div(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct gl518_data *data = i2c_get_clientdata(client);
 int nr = to_sensor_dev_attr(attr)->index;
 int regvalue;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 switch (val) {
 case 1: val = 0; break;
 case 2: val = 1; break;
 case 4: val = 2; break;
 case 8: val = 3; break;
 default:
  dev_err(dev, "Invalid fan clock divider %lu, choose one "
   "of 1, 2, 4 or 8\n", val);
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);
 regvalue = gl518_read_value(client, GL518_REG_MISC);
 data->fan_div[nr] = val;
 regvalue = (regvalue & ~(0xc0 >> (2 * nr)))
   | (data->fan_div[nr] << (6 - 2 * nr));
 gl518_write_value(client, GL518_REG_MISC, regvalue);
 mutex_unlock(&data->update_lock);
 return count;
}
