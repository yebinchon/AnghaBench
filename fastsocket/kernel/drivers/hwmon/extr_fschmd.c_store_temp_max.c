
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fschmd_data {size_t kind; long* temp_max; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int ** FSCHMD_REG_TEMP_LIMIT ;
 int SENSORS_LIMIT (long,int,int) ;
 struct fschmd_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 int to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_temp_max(struct device *dev, struct device_attribute
 *devattr, const char *buf, size_t count)
{
 int index = to_sensor_dev_attr(devattr)->index;
 struct fschmd_data *data = dev_get_drvdata(dev);
 long v = simple_strtol(buf, ((void*)0), 10) / 1000;

 v = SENSORS_LIMIT(v, -128, 127) + 128;

 mutex_lock(&data->update_lock);
 i2c_smbus_write_byte_data(to_i2c_client(dev),
  FSCHMD_REG_TEMP_LIMIT[data->kind][index], v);
 data->temp_max[index] = v;
 mutex_unlock(&data->update_lock);

 return count;
}
