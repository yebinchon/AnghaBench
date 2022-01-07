
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_ext_attribute {scalar_t__ var; } ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 long INT_MAX ;
 long INT_MIN ;
 long simple_strtol (char const*,char**,int ) ;
 struct sysdev_ext_attribute* to_ext_attr (struct sysdev_attribute*) ;

ssize_t sysdev_store_int(struct sys_device *sysdev,
      struct sysdev_attribute *attr,
      const char *buf, size_t size)
{
 struct sysdev_ext_attribute *ea = to_ext_attr(attr);
 char *end;
 long new = simple_strtol(buf, &end, 0);
 if (end == buf || new > INT_MAX || new < INT_MIN)
  return -EINVAL;
 *(int *)(ea->var) = new;

 return size;
}
