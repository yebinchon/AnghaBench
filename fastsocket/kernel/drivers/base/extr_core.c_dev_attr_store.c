
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct device_attribute {int (* store ) (struct device*,struct device_attribute*,char const*,size_t) ;} ;
struct device {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct device*,struct device_attribute*,char const*,size_t) ;
 struct device* to_dev (struct kobject*) ;
 struct device_attribute* to_dev_attr (struct attribute*) ;

__attribute__((used)) static ssize_t dev_attr_store(struct kobject *kobj, struct attribute *attr,
         const char *buf, size_t count)
{
 struct device_attribute *dev_attr = to_dev_attr(attr);
 struct device *dev = to_dev(kobj);
 ssize_t ret = -EIO;

 if (dev_attr->store)
  ret = dev_attr->store(dev, dev_attr, buf, count);
 return ret;
}
