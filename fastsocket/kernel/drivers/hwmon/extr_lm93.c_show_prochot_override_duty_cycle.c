
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm93_data {int prochot_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_prochot_override_duty_cycle(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct lm93_data *data = lm93_update_device(dev);
 return sprintf(buf,"%d\n",data->prochot_override & 0x0f);
}
