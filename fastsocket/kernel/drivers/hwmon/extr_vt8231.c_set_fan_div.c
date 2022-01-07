
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8231_data {int* fan_min; int* fan_div; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DIV_FROM_REG (int) ;
 size_t EINVAL ;
 long FAN_FROM_REG (int,int ) ;
 int FAN_TO_REG (long,int ) ;
 int VT8231_REG_FANDIV ;
 int VT8231_REG_FAN_MIN (int) ;
 int dev_err (struct device*,char*,unsigned long) ;
 struct vt8231_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int vt8231_read_value (struct vt8231_data*,int ) ;
 int vt8231_write_value (struct vt8231_data*,int ,int) ;

__attribute__((used)) static ssize_t set_fan_div(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct vt8231_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 int nr = sensor_attr->index;
 int old = vt8231_read_value(data, VT8231_REG_FANDIV);
 long min = FAN_FROM_REG(data->fan_min[nr],
     DIV_FROM_REG(data->fan_div[nr]));

 mutex_lock(&data->update_lock);
 switch (val) {
 case 1: data->fan_div[nr] = 0; break;
 case 2: data->fan_div[nr] = 1; break;
 case 4: data->fan_div[nr] = 2; break;
 case 8: data->fan_div[nr] = 3; break;
 default:
  dev_err(dev, "fan_div value %ld not supported. "
          "Choose one of 1, 2, 4 or 8!\n", val);
  mutex_unlock(&data->update_lock);
  return -EINVAL;
 }


 data->fan_min[nr] = FAN_TO_REG(min, DIV_FROM_REG(data->fan_div[nr]));
 vt8231_write_value(data, VT8231_REG_FAN_MIN(nr), data->fan_min[nr]);

 old = (old & 0x0f) | (data->fan_div[1] << 6) | (data->fan_div[0] << 4);
 vt8231_write_value(data, VT8231_REG_FANDIV, old);
 mutex_unlock(&data->update_lock);
 return count;
}
