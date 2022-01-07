
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct lm90_data {scalar_t__ kind; int* temp11; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
 scalar_t__ adt7461 ;
 struct lm90_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int const,int) ;
 scalar_t__ lm99 ;
 scalar_t__ max6646 ;
 scalar_t__ max6657 ;
 scalar_t__ max6680 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 int temp_to_s16 (long) ;
 int temp_to_s8 (long) ;
 int temp_to_u16_adt7461 (struct lm90_data*,long) ;
 int temp_to_u8 (long) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp11(struct device *dev, struct device_attribute *devattr,
     const char *buf, size_t count)
{
 static const u8 reg[6] = {
  131,
  130,
  133,
  132,
  129,
  128,
 };

 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct lm90_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);
 int nr = attr->index;


 if (data->kind == lm99 && attr->index <= 2)
  val -= 16000;

 mutex_lock(&data->update_lock);
 if (data->kind == adt7461)
  data->temp11[nr] = temp_to_u16_adt7461(data, val);
 else if (data->kind == max6657 || data->kind == max6680)
  data->temp11[nr] = temp_to_s8(val) << 8;
 else if (data->kind == max6646)
  data->temp11[nr] = temp_to_u8(val) << 8;
 else
  data->temp11[nr] = temp_to_s16(val);

 i2c_smbus_write_byte_data(client, reg[(nr - 1) * 2],
      data->temp11[nr] >> 8);
 if (data->kind != max6657 && data->kind != max6680
     && data->kind != max6646)
  i2c_smbus_write_byte_data(client, reg[(nr - 1) * 2 + 1],
       data->temp11[nr] & 0xff);
 mutex_unlock(&data->update_lock);
 return count;
}
