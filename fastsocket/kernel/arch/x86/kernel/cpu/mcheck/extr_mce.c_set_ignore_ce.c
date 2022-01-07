
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int mce_disable_ce ;
 int mce_enable_ce ;
 int mce_ignore_ce ;
 int on_each_cpu (int ,void*,int) ;
 scalar_t__ strict_strtoull (char const*,int ,scalar_t__*) ;

__attribute__((used)) static ssize_t set_ignore_ce(struct sys_device *s,
        struct sysdev_attribute *attr,
        const char *buf, size_t size)
{
 u64 new;

 if (strict_strtoull(buf, 0, &new) < 0)
  return -EINVAL;

 if (mce_ignore_ce ^ !!new) {
  if (new) {

   on_each_cpu(mce_disable_ce, (void *)1, 1);
   mce_ignore_ce = 1;
  } else {

   mce_ignore_ce = 0;
   on_each_cpu(mce_enable_ce, (void *)1, 1);
  }
 }
 return size;
}
