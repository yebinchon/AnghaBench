
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int config_fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm63_data* lm63_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_pwm1_enable(struct device *dev, struct device_attribute *dummy,
    char *buf)
{
 struct lm63_data *data = lm63_update_device(dev);
 return sprintf(buf, "%d\n", data->config_fan & 0x20 ? 1 : 2);
}
