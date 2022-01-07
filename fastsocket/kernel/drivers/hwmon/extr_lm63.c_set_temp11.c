
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct lm63_data {int* temp11; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;






 int TEMP11_TO_REG (long) ;
 struct lm63_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int const,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp11(struct device *dev, struct device_attribute *devattr,
     const char *buf, size_t count)
{
 static const u8 reg[4] = {
  128,
  129,
  130,
  131,
 };

 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct lm63_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);
 int nr = attr->index;

 mutex_lock(&data->update_lock);
 data->temp11[nr] = TEMP11_TO_REG(val);
 i2c_smbus_write_byte_data(client, reg[(nr - 1) * 2],
      data->temp11[nr] >> 8);
 i2c_smbus_write_byte_data(client, reg[(nr - 1) * 2 + 1],
      data->temp11[nr] & 0xff);
 mutex_unlock(&data->update_lock);
 return count;
}
