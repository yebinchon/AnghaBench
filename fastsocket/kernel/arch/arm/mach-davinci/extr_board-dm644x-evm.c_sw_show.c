
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ gpio_get_value_cansleep (int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int sw_gpio ;

__attribute__((used)) static ssize_t
sw_show(struct device *d, struct device_attribute *a, char *buf)
{
 char *s = gpio_get_value_cansleep(sw_gpio) ? "on\n" : "off\n";

 strcpy(buf, s);
 return strlen(s);
}
