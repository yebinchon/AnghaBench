
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int gpio_mask; } ;
typedef int ssize_t ;


 struct adm1026_data* adm1026_update_device (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_gpio_mask(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct adm1026_data *data = adm1026_update_device(dev);
 return sprintf(buf, "%ld\n", data->gpio_mask);
}
