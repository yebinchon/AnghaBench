
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;


 int mce_restart () ;
 int sysdev_store_int (struct sys_device*,struct sysdev_attribute*,char const*,size_t) ;

__attribute__((used)) static ssize_t store_int_with_restart(struct sys_device *s,
          struct sysdev_attribute *attr,
          const char *buf, size_t size)
{
 ssize_t ret = sysdev_store_int(s, attr, buf, size);
 mce_restart();
 return ret;
}
