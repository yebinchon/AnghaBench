
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int get_max_brightness () ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
show_max_brightness(struct device *dev,
      struct device_attribute *attr, char *buf)
{

 int ret;

 ret = get_max_brightness();
 if (ret < 0)
  return ret;

 return sprintf(buf, "%i\n", ret);
}
