
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int (* store ) (struct sys_device*,struct sysdev_attribute*,char const*,size_t) ;} ;
struct sys_device {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct sys_device*,struct sysdev_attribute*,char const*,size_t) ;
 struct sys_device* to_sysdev (struct kobject*) ;
 struct sysdev_attribute* to_sysdev_attr (struct attribute*) ;

__attribute__((used)) static ssize_t
sysdev_store(struct kobject *kobj, struct attribute *attr,
      const char *buffer, size_t count)
{
 struct sys_device *sysdev = to_sysdev(kobj);
 struct sysdev_attribute *sysdev_attr = to_sysdev_attr(attr);

 if (sysdev_attr->store)
  return sysdev_attr->store(sysdev, sysdev_attr, buffer, count);
 return -EIO;
}
