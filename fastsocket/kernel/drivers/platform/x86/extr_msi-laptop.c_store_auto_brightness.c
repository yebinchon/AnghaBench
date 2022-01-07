
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int set_auto_brightness (int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t store_auto_brightness(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{

 int enable, ret;

 if (sscanf(buf, "%i", &enable) != 1 || (enable != (enable & 1)))
  return -EINVAL;

 ret = set_auto_brightness(enable);
 if (ret < 0)
  return ret;

 return count;
}
