
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int config; scalar_t__ dac; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MAX6650_CFG_V12 ;
 struct max6650_data* max6650_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t get_pwm(struct device *dev, struct device_attribute *devattr,
         char *buf)
{
 int pwm;
 struct max6650_data *data = max6650_update_device(dev);



 if (data->config & MAX6650_CFG_V12)
  pwm = 255 - (255 * (int)data->dac)/180;
 else
  pwm = 255 - (255 * (int)data->dac)/76;

 if (pwm < 0)
  pwm = 0;

 return sprintf(buf, "%d\n", pwm);
}
