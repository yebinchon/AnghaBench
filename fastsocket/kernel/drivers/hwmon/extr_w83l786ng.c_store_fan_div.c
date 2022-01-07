
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w83l786ng_data {int* fan_min; int* fan_div; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int) ;
 int DIV_TO_REG (int ) ;
 unsigned long FAN_FROM_REG (int,int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int W83L786NG_REG_FAN_DIV ;
 int W83L786NG_REG_FAN_MIN (int) ;
 struct w83l786ng_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83l786ng_read_value (struct i2c_client*,int ) ;
 int w83l786ng_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_fan_div(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83l786ng_data *data = i2c_get_clientdata(client);

 unsigned long min;
 u8 tmp_fan_div;
 u8 fan_div_reg;
 u8 keep_mask = 0;
 u8 new_shift = 0;


 mutex_lock(&data->update_lock);
 min = FAN_FROM_REG(data->fan_min[nr], DIV_FROM_REG(data->fan_div[nr]));

 data->fan_div[nr] = DIV_TO_REG(simple_strtoul(buf, ((void*)0), 10));

 switch (nr) {
 case 0:
  keep_mask = 0xf8;
  new_shift = 0;
  break;
 case 1:
  keep_mask = 0x8f;
  new_shift = 4;
  break;
 }

 fan_div_reg = w83l786ng_read_value(client, W83L786NG_REG_FAN_DIV)
        & keep_mask;

 tmp_fan_div = (data->fan_div[nr] << new_shift) & ~keep_mask;

 w83l786ng_write_value(client, W83L786NG_REG_FAN_DIV,
         fan_div_reg | tmp_fan_div);


 data->fan_min[nr] = FAN_TO_REG(min, DIV_FROM_REG(data->fan_div[nr]));
 w83l786ng_write_value(client, W83L786NG_REG_FAN_MIN(nr),
         data->fan_min[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
