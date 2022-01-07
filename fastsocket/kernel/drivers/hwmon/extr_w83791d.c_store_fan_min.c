
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83791d_data {int update_lock; int * fan_min; int * fan_div; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DIV_FROM_REG (int ) ;
 int * W83791D_REG_FAN_MIN ;
 int fan_to_reg (unsigned long,int ) ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83791d_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static ssize_t store_fan_min(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct w83791d_data *data = i2c_get_clientdata(client);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 int nr = sensor_attr->index;

 mutex_lock(&data->update_lock);
 data->fan_min[nr] = fan_to_reg(val, DIV_FROM_REG(data->fan_div[nr]));
 w83791d_write(client, W83791D_REG_FAN_MIN[nr], data->fan_min[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
