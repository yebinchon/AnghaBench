
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm93_data {int pwm_ramp_ctl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM93_RAMP_FROM_REG (int) ;
 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_pwm_auto_prochot_ramp(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lm93_data *data = lm93_update_device(dev);
 return sprintf(buf,"%d\n",
         LM93_RAMP_FROM_REG(data->pwm_ramp_ctl >> 4 & 0x0f));
}
