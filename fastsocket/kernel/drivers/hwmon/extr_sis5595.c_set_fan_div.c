
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis5595_data {int* fan_min; int* fan_div; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DIV_FROM_REG (int) ;
 size_t EINVAL ;
 unsigned long FAN_FROM_REG (int,int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int SIS5595_REG_FANDIV ;
 int SIS5595_REG_FAN_MIN (int) ;
 int dev_err (struct device*,char*,unsigned long) ;
 struct sis5595_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 int sis5595_read_value (struct sis5595_data*,int ) ;
 int sis5595_write_value (struct sis5595_data*,int ,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_div(struct device *dev, struct device_attribute *da,
      const char *buf, size_t count)
{
 struct sis5595_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int nr = attr->index;
 unsigned long min;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 int reg;

 mutex_lock(&data->update_lock);
 min = FAN_FROM_REG(data->fan_min[nr],
   DIV_FROM_REG(data->fan_div[nr]));
 reg = sis5595_read_value(data, SIS5595_REG_FANDIV);

 switch (val) {
 case 1: data->fan_div[nr] = 0; break;
 case 2: data->fan_div[nr] = 1; break;
 case 4: data->fan_div[nr] = 2; break;
 case 8: data->fan_div[nr] = 3; break;
 default:
  dev_err(dev, "fan_div value %ld not "
   "supported. Choose one of 1, 2, 4 or 8!\n", val);
  mutex_unlock(&data->update_lock);
  return -EINVAL;
 }

 switch (nr) {
 case 0:
  reg = (reg & 0xcf) | (data->fan_div[nr] << 4);
  break;
 case 1:
  reg = (reg & 0x3f) | (data->fan_div[nr] << 6);
  break;
 }
 sis5595_write_value(data, SIS5595_REG_FANDIV, reg);
 data->fan_min[nr] =
  FAN_TO_REG(min, DIV_FROM_REG(data->fan_div[nr]));
 sis5595_write_value(data, SIS5595_REG_FAN_MIN(nr), data->fan_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
