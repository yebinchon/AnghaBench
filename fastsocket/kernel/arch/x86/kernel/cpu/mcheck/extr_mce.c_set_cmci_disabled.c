
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int mce_cmci_disabled ;
 int mce_disable_ce ;
 int mce_enable_ce ;
 int on_each_cpu (int ,int *,int) ;
 scalar_t__ strict_strtoull (char const*,int ,scalar_t__*) ;

__attribute__((used)) static ssize_t set_cmci_disabled(struct sys_device *s,
     struct sysdev_attribute *attr,
     const char *buf, size_t size)
{
 u64 new;

 if (strict_strtoull(buf, 0, &new) < 0)
  return -EINVAL;

 if (mce_cmci_disabled ^ !!new) {
  if (new) {

   on_each_cpu(mce_disable_ce, ((void*)0), 1);
   mce_cmci_disabled = 1;
  } else {

   mce_cmci_disabled = 0;
   on_each_cpu(mce_enable_ce, ((void*)0), 1);
  }
 }
 return size;
}
