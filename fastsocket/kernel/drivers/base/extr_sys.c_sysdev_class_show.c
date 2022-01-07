
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class_attribute {int (* show ) (struct sysdev_class*,char*) ;} ;
struct sysdev_class {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct sysdev_class*,char*) ;
 struct sysdev_class* to_sysdev_class (struct kobject*) ;
 struct sysdev_class_attribute* to_sysdev_class_attr (struct attribute*) ;

__attribute__((used)) static ssize_t sysdev_class_show(struct kobject *kobj, struct attribute *attr,
     char *buffer)
{
 struct sysdev_class *class = to_sysdev_class(kobj);
 struct sysdev_class_attribute *class_attr = to_sysdev_class_attr(attr);

 if (class_attr->show)
  return class_attr->show(class, buffer);
 return -EIO;
}
