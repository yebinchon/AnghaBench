
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smsc47m192_data {int* temp_offset; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SMSC47M192_REG_SFR ;
 int SMSC47M192_REG_TEMP_OFFSET (int) ;
 int TEMP_TO_REG (long) ;
 struct smsc47m192_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_offset(struct device *dev, struct device_attribute
  *attr, const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct smsc47m192_data *data = i2c_get_clientdata(client);
 u8 sfr = i2c_smbus_read_byte_data(client, SMSC47M192_REG_SFR);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->temp_offset[nr] = TEMP_TO_REG(val);
 if (nr>1)
  i2c_smbus_write_byte_data(client,
   SMSC47M192_REG_TEMP_OFFSET(nr), data->temp_offset[nr]);
 else if (data->temp_offset[nr] != 0) {


  i2c_smbus_write_byte_data(client, SMSC47M192_REG_SFR,
     (sfr & 0xef) | (nr==0 ? 0x10 : 0));
  data->temp_offset[1-nr] = 0;
  i2c_smbus_write_byte_data(client,
   SMSC47M192_REG_TEMP_OFFSET(nr), data->temp_offset[nr]);
 } else if ((sfr & 0x10) == (nr==0 ? 0x10 : 0))
  i2c_smbus_write_byte_data(client,
     SMSC47M192_REG_TEMP_OFFSET(nr), 0);
 mutex_unlock(&data->update_lock);
 return count;
}
