
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it87_data {int fan_ctl; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IT87_REG_FAN_CTL ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 int it87_read_value (struct it87_data*,int ) ;
 int it87_write_value (struct it87_data*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* pwm_freq ;
 unsigned long simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t set_pwm_freq(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct it87_data *data = dev_get_drvdata(dev);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 int i;


 for (i = 0; i < 7; i++) {
  if (val > (pwm_freq[i] + pwm_freq[i+1]) / 2)
   break;
 }

 mutex_lock(&data->update_lock);
 data->fan_ctl = it87_read_value(data, IT87_REG_FAN_CTL) & 0x8f;
 data->fan_ctl |= i << 4;
 it87_write_value(data, IT87_REG_FAN_CTL, data->fan_ctl);
 mutex_unlock(&data->update_lock);

 return count;
}
