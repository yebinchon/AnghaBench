
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83791d_data {int** temp_add; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int TEMP23_TO_REG (long) ;
 int ** W83791D_REG_TEMP_ADD ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83791d_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t store_temp23(struct device *dev,
    struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct w83791d_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);
 int nr = attr->nr;
 int index = attr->index;

 mutex_lock(&data->update_lock);
 data->temp_add[nr][index] = TEMP23_TO_REG(val);
 w83791d_write(client, W83791D_REG_TEMP_ADD[nr][index * 2],
    data->temp_add[nr][index] >> 8);
 w83791d_write(client, W83791D_REG_TEMP_ADD[nr][index * 2 + 1],
    data->temp_add[nr][index] & 0x80);
 mutex_unlock(&data->update_lock);

 return count;
}
