
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fschmd_data {size_t kind; int* fan_ripple; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int ** FSCHMD_REG_FAN_RIPPLE ;
 int dev_err (struct device*,char*,unsigned long) ;
 struct fschmd_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 int to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_fan_div(struct device *dev, struct device_attribute
 *devattr, const char *buf, size_t count)
{
 u8 reg;
 int index = to_sensor_dev_attr(devattr)->index;
 struct fschmd_data *data = dev_get_drvdata(dev);

 unsigned long v = simple_strtoul(buf, ((void*)0), 10);

 switch (v) {
 case 2: v = 1; break;
 case 4: v = 2; break;
 case 8: v = 3; break;
 default:
  dev_err(dev, "fan_div value %lu not supported. "
   "Choose one of 2, 4 or 8!\n", v);
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);

 reg = i2c_smbus_read_byte_data(to_i2c_client(dev),
  FSCHMD_REG_FAN_RIPPLE[data->kind][index]);


 reg &= ~0x03;
 reg |= v;

 i2c_smbus_write_byte_data(to_i2c_client(dev),
  FSCHMD_REG_FAN_RIPPLE[data->kind][index], reg);

 data->fan_ripple[index] = reg;

 mutex_unlock(&data->update_lock);

 return count;
}
