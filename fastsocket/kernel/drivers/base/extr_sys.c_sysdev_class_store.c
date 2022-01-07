
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class_attribute {int (* store ) (struct sysdev_class*,char const*,size_t) ;} ;
struct sysdev_class {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct sysdev_class*,char const*,size_t) ;
 struct sysdev_class* to_sysdev_class (struct kobject*) ;
 struct sysdev_class_attribute* to_sysdev_class_attr (struct attribute*) ;

__attribute__((used)) static ssize_t sysdev_class_store(struct kobject *kobj, struct attribute *attr,
      const char *buffer, size_t count)
{
 struct sysdev_class *class = to_sysdev_class(kobj);
 struct sysdev_class_attribute *class_attr = to_sysdev_class_attr(attr);

 if (class_attr->store)
  return class_attr->store(class, buffer, count);
 return -EIO;
}
