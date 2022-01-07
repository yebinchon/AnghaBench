
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83627hf_data {scalar_t__ type; int * pwm_freq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int pwm_freq_from_reg (int ) ;
 int pwm_freq_from_reg_627hf (int ) ;
 int sprintf (char*,char*,int ) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 scalar_t__ w83627hf ;
 struct w83627hf_data* w83627hf_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_pwm_freq(struct device *dev, struct device_attribute *devattr, char *buf)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = w83627hf_update_device(dev);
 if (data->type == w83627hf)
  return sprintf(buf, "%ld\n",
   pwm_freq_from_reg_627hf(data->pwm_freq[nr]));
 else
  return sprintf(buf, "%ld\n",
   pwm_freq_from_reg(data->pwm_freq[nr]));
}
