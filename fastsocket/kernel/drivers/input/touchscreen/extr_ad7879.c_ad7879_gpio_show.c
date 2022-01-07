
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7879 {int gpio; } ;
typedef int ssize_t ;


 struct ad7879* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ad7879_gpio_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct ad7879 *ts = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", ts->gpio);
}
