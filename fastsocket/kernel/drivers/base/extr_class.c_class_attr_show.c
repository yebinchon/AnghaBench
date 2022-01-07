
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct class_private {int class; } ;
struct class_attribute {int (* show ) (int ,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (int ,char*) ;
 struct class_private* to_class (struct kobject*) ;
 struct class_attribute* to_class_attr (struct attribute*) ;

__attribute__((used)) static ssize_t class_attr_show(struct kobject *kobj, struct attribute *attr,
          char *buf)
{
 struct class_attribute *class_attr = to_class_attr(attr);
 struct class_private *cp = to_class(kobj);
 ssize_t ret = -EIO;

 if (class_attr->show)
  ret = class_attr->show(cp->class, buf);
 return ret;
}
