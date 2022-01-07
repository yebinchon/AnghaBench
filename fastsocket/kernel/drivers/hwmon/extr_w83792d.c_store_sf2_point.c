
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct w83792d_data {int** sf2_points; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SENSORS_LIMIT (int ,int ,int) ;
 int ** W83792D_REG_POINTS ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83792d_read_value (struct i2c_client*,int ) ;
 int w83792d_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_sf2_point(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sensor_attr = to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr - 1;
 int index = sensor_attr->index - 1;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 u32 val;
 u8 mask_tmp = 0;

 val = simple_strtoul(buf, ((void*)0), 10);
 mutex_lock(&data->update_lock);
 data->sf2_points[index][nr] = SENSORS_LIMIT(val, 0, 127);
 mask_tmp = w83792d_read_value(client,
     W83792D_REG_POINTS[index][nr]) & 0x80;
 w83792d_write_value(client, W83792D_REG_POINTS[index][nr],
  mask_tmp|data->sf2_points[index][nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
