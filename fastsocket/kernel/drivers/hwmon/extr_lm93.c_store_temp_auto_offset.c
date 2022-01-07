
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct TYPE_2__ {int* offset; } ;
struct lm93_data {int sfc2; int update_lock; TYPE_1__ block10; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int LM93_REG_SFC2 ;
 int LM93_REG_TEMP_OFFSET (int) ;
 int LM93_TEMP_AUTO_OFFSET_TO_REG (int,int ,int,int) ;
 struct lm93_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_temp_auto_offset(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *s_attr = to_sensor_dev_attr_2(attr);
 int nr = s_attr->index;
 int ofs = s_attr->nr;
 struct i2c_client *client = to_i2c_client(dev);
 struct lm93_data *data = i2c_get_clientdata(client);
 u32 val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);

 data->sfc2 = lm93_read_byte(client, LM93_REG_SFC2);
 data->sfc2 |= ((nr < 2) ? 0x10 : 0x20);
 lm93_write_byte(client, LM93_REG_SFC2, data->sfc2);
 data->block10.offset[ofs] = LM93_TEMP_AUTO_OFFSET_TO_REG(
   data->block10.offset[ofs], val, nr, 1);
 lm93_write_byte(client, LM93_REG_TEMP_OFFSET(ofs),
   data->block10.offset[ofs]);
 mutex_unlock(&data->update_lock);
 return count;
}
