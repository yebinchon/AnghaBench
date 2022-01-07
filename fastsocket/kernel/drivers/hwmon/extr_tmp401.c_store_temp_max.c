
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tmp401_data {int* temp_high; int update_lock; int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int * TMP401_TEMP_HIGH_LIMIT_LSB ;
 int * TMP401_TEMP_HIGH_LIMIT_MSB_WRITE ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 int tmp401_temp_to_register (long,int ) ;
 struct tmp401_data* tmp401_update_device (struct device*) ;
 int to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_temp_max(struct device *dev, struct device_attribute
 *devattr, const char *buf, size_t count)
{
 int index = to_sensor_dev_attr(devattr)->index;
 struct tmp401_data *data = tmp401_update_device(dev);
 long val;
 u16 reg;

 if (strict_strtol(buf, 10, &val))
  return -EINVAL;

 reg = tmp401_temp_to_register(val, data->config);

 mutex_lock(&data->update_lock);

 i2c_smbus_write_byte_data(to_i2c_client(dev),
  TMP401_TEMP_HIGH_LIMIT_MSB_WRITE[index], reg >> 8);
 i2c_smbus_write_byte_data(to_i2c_client(dev),
  TMP401_TEMP_HIGH_LIMIT_LSB[index], reg & 0xFF);

 data->temp_high[index] = reg;

 mutex_unlock(&data->update_lock);

 return count;
}
