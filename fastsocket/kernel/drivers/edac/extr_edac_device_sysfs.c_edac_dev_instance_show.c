
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct instance_attribute {int (* show ) (struct edac_device_instance*,char*) ;} ;
struct edac_device_instance {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct edac_device_instance*,char*) ;
 struct edac_device_instance* to_instance (struct kobject*) ;
 struct instance_attribute* to_instance_attr (struct attribute*) ;

__attribute__((used)) static ssize_t edac_dev_instance_show(struct kobject *kobj,
    struct attribute *attr, char *buffer)
{
 struct edac_device_instance *instance = to_instance(kobj);
 struct instance_attribute *instance_attr = to_instance_attr(attr);

 if (instance_attr->show)
  return instance_attr->show(instance, buffer);
 return -EIO;
}
