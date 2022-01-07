
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83793_data {int* temp_mode; int update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int * W83793_REG_TEMP_MODE ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_temp_mode(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int index = sensor_attr->index;
 u8 mask = (index < 4) ? 0x03 : 0x01;
 u8 shift = (index < 4) ? (2 * index) : (index - 4);
 u8 val = simple_strtoul(buf, ((void*)0), 10);


 if ((val == 6) && (index < 4)) {
  val -= 3;
 } else if ((val == 3 && index < 4)
  || (val == 4 && index >= 4)) {

  val = !!val;
 } else {
  return -EINVAL;
 }

 index = (index < 4) ? 0 : 1;
 mutex_lock(&data->update_lock);
 data->temp_mode[index] =
     w83793_read_value(client, W83793_REG_TEMP_MODE[index]);
 data->temp_mode[index] &= ~(mask << shift);
 data->temp_mode[index] |= val << shift;
 w83793_write_value(client, W83793_REG_TEMP_MODE[index],
       data->temp_mode[index]);
 mutex_unlock(&data->update_lock);

 return count;
}
