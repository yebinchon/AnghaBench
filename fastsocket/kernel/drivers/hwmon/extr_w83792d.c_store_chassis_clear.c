
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct w83792d_data {int chassis_clear; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SENSORS_LIMIT (int ,int ,int) ;
 int W83792D_REG_CHASSIS_CLR ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int w83792d_read_value (struct i2c_client*,int ) ;
 int w83792d_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_chassis_clear(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 u32 val;
 u8 temp1 = 0, temp2 = 0;

 val = simple_strtoul(buf, ((void*)0), 10);
 mutex_lock(&data->update_lock);
 data->chassis_clear = SENSORS_LIMIT(val, 0 ,1);
 temp1 = ((data->chassis_clear) << 7) & 0x80;
 temp2 = w83792d_read_value(client,
  W83792D_REG_CHASSIS_CLR) & 0x7f;
 w83792d_write_value(client, W83792D_REG_CHASSIS_CLR, temp1 | temp2);
 mutex_unlock(&data->update_lock);

 return count;
}
