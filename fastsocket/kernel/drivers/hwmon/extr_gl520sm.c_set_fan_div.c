
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dev; } ;
struct gl520_data {int* fan_div; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int GL520_REG_FAN_DIV ;
 int dev_err (int *,char*,unsigned long) ;
 int gl520_read_value (struct i2c_client*,int ) ;
 int gl520_write_value (struct i2c_client*,int ,int) ;
 struct gl520_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_div(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct gl520_data *data = i2c_get_clientdata(client);
 int n = to_sensor_dev_attr(attr)->index;
 unsigned long v = simple_strtoul(buf, ((void*)0), 10);
 u8 r;

 switch (v) {
 case 1: r = 0; break;
 case 2: r = 1; break;
 case 4: r = 2; break;
 case 8: r = 3; break;
 default:
  dev_err(&client->dev, "fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\n", v);
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);
 data->fan_div[n] = r;

 if (n == 0)
  gl520_write_value(client, GL520_REG_FAN_DIV,
      (gl520_read_value(client, GL520_REG_FAN_DIV)
       & ~0xc0) | (r << 6));
 else
  gl520_write_value(client, GL520_REG_FAN_DIV,
      (gl520_read_value(client, GL520_REG_FAN_DIV)
       & ~0x30) | (r << 4));

 mutex_unlock(&data->update_lock);
 return count;
}
