
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int is_pen_down (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ads7846_pen_down_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%u\n", is_pen_down(dev));
}
