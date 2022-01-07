
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w83781d_data {int beep_mask; scalar_t__ type; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int BEEP_MASK_TO_REG (int ,scalar_t__) ;
 int W83781D_REG_BEEP_INTS1 ;
 int W83781D_REG_BEEP_INTS2 ;
 int W83781D_REG_BEEP_INTS3 ;
 scalar_t__ as99127f ;
 struct w83781d_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 scalar_t__ w83781d ;
 int w83781d_write_value (struct w83781d_data*,int ,int) ;

__attribute__((used)) static ssize_t
store_beep_mask(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct w83781d_data *data = dev_get_drvdata(dev);
 u32 val;

 val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->beep_mask &= 0x8000;
 data->beep_mask |= BEEP_MASK_TO_REG(val, data->type);
 w83781d_write_value(data, W83781D_REG_BEEP_INTS1,
       data->beep_mask & 0xff);
 w83781d_write_value(data, W83781D_REG_BEEP_INTS2,
       (data->beep_mask >> 8) & 0xff);
 if (data->type != w83781d && data->type != as99127f) {
  w83781d_write_value(data, W83781D_REG_BEEP_INTS3,
        ((data->beep_mask) >> 16) & 0xff);
 }
 mutex_unlock(&data->update_lock);

 return count;
}
