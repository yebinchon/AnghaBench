
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tmp401_data {int config; int temp_crit_hyst; int update_lock; int * temp_crit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 long SENSORS_LIMIT (long,int,int) ;
 int TMP401_CONFIG_RANGE ;
 int TMP401_TEMP_CRIT_HYST ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 int tmp401_crit_register_to_temp (int ,int) ;
 struct tmp401_data* tmp401_update_device (struct device*) ;
 int to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_temp_crit_hyst(struct device *dev, struct device_attribute
 *devattr, const char *buf, size_t count)
{
 int temp, index = to_sensor_dev_attr(devattr)->index;
 struct tmp401_data *data = tmp401_update_device(dev);
 long val;
 u8 reg;

 if (strict_strtol(buf, 10, &val))
  return -EINVAL;

 if (data->config & TMP401_CONFIG_RANGE)
  val = SENSORS_LIMIT(val, -64000, 191000);
 else
  val = SENSORS_LIMIT(val, 0, 127000);

 mutex_lock(&data->update_lock);
 temp = tmp401_crit_register_to_temp(data->temp_crit[index],
      data->config);
 val = SENSORS_LIMIT(val, temp - 255000, temp);
 reg = ((temp - val) + 500) / 1000;

 i2c_smbus_write_byte_data(to_i2c_client(dev),
  TMP401_TEMP_CRIT_HYST, reg);

 data->temp_crit_hyst = reg;

 mutex_unlock(&data->update_lock);

 return count;
}
