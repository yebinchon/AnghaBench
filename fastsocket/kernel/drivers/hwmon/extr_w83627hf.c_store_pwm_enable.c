
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w83627hf_data {unsigned long* pwm_enable; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int* W83627THF_PWM_ENABLE_SHIFT ;
 int * W83627THF_REG_PWM_ENABLE ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627hf_read_value (struct w83627hf_data*,int ) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int) ;

__attribute__((used)) static ssize_t
store_pwm_enable(struct device *dev, struct device_attribute *devattr,
   const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = dev_get_drvdata(dev);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 u8 reg;

 if (!val || (val > 3))
  return -EINVAL;
 mutex_lock(&data->update_lock);
 data->pwm_enable[nr] = val;
 reg = w83627hf_read_value(data, W83627THF_REG_PWM_ENABLE[nr]);
 reg &= ~(0x03 << W83627THF_PWM_ENABLE_SHIFT[nr]);
 reg |= (val - 1) << W83627THF_PWM_ENABLE_SHIFT[nr];
 w83627hf_write_value(data, W83627THF_REG_PWM_ENABLE[nr], reg);
 mutex_unlock(&data->update_lock);
 return count;
}
