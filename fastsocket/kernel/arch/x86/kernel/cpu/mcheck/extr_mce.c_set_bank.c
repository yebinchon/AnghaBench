
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int ctl; } ;


 size_t EINVAL ;
 TYPE_1__* attr_to_bank (struct sysdev_attribute*) ;
 int mce_restart () ;
 scalar_t__ strict_strtoull (char const*,int ,int *) ;

__attribute__((used)) static ssize_t set_bank(struct sys_device *s, struct sysdev_attribute *attr,
   const char *buf, size_t size)
{
 u64 new;

 if (strict_strtoull(buf, 0, &new) < 0)
  return -EINVAL;

 attr_to_bank(attr)->ctl = new;
 mce_restart();

 return size;
}
