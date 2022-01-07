
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it87_data {int fan_ctl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct it87_data* it87_update_device (struct device*) ;
 int* pwm_freq ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_pwm_freq(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct it87_data *data = it87_update_device(dev);
 int index = (data->fan_ctl >> 4) & 0x07;

 return sprintf(buf, "%u\n", pwm_freq[index]);
}
