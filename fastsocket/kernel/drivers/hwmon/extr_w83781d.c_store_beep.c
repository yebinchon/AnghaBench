
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w83781d_data {int beep_mask; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int W83781D_REG_BEEP_INTS1 ;
 int W83781D_REG_BEEP_INTS2 ;
 int W83781D_REG_BEEP_INTS3 ;
 struct w83781d_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83781d_read_value (struct w83781d_data*,int ) ;
 int w83781d_write_value (struct w83781d_data*,int ,int) ;

__attribute__((used)) static ssize_t
store_beep(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct w83781d_data *data = dev_get_drvdata(dev);
 int bitnr = to_sensor_dev_attr(attr)->index;
 unsigned long bit;
 u8 reg;

 bit = simple_strtoul(buf, ((void*)0), 10);
 if (bit & ~1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 if (bit)
  data->beep_mask |= (1 << bitnr);
 else
  data->beep_mask &= ~(1 << bitnr);

 if (bitnr < 8) {
  reg = w83781d_read_value(data, W83781D_REG_BEEP_INTS1);
  if (bit)
   reg |= (1 << bitnr);
  else
   reg &= ~(1 << bitnr);
  w83781d_write_value(data, W83781D_REG_BEEP_INTS1, reg);
 } else if (bitnr < 16) {
  reg = w83781d_read_value(data, W83781D_REG_BEEP_INTS2);
  if (bit)
   reg |= (1 << (bitnr - 8));
  else
   reg &= ~(1 << (bitnr - 8));
  w83781d_write_value(data, W83781D_REG_BEEP_INTS2, reg);
 } else {
  reg = w83781d_read_value(data, W83781D_REG_BEEP_INTS3);
  if (bit)
   reg |= (1 << (bitnr - 16));
  else
   reg &= ~(1 << (bitnr - 16));
  w83781d_write_value(data, W83781D_REG_BEEP_INTS3, reg);
 }
 mutex_unlock(&data->update_lock);

 return count;
}
