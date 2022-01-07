
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_cpufv {int num; int cur; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ get_cpufv (struct eeepc_cpufv*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_cpufv(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct eeepc_cpufv c;

 if (get_cpufv(&c))
  return -ENODEV;
 return sprintf(buf, "%#x\n", (c.num << 8) | c.cur);
}
