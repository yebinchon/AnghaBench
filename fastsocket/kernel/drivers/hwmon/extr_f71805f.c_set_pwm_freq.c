
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct f71805f_data {int update_lock; int * pwm_freq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int F71805F_REG_PWM_FREQ (int) ;
 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int f71805f_write8 (struct f71805f_data*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_freq_to_reg (unsigned long) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_freq(struct device *dev, struct device_attribute
       *devattr, const char *buf, size_t count)
{
 struct f71805f_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int nr = attr->index;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->pwm_freq[nr] = pwm_freq_to_reg(val);
 f71805f_write8(data, F71805F_REG_PWM_FREQ(nr), data->pwm_freq[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
