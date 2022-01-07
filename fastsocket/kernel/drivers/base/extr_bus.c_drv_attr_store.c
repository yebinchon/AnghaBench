
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct driver_private {int driver; } ;
struct driver_attribute {int (* store ) (int ,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (int ,char const*,size_t) ;
 struct driver_private* to_driver (struct kobject*) ;
 struct driver_attribute* to_drv_attr (struct attribute*) ;

__attribute__((used)) static ssize_t drv_attr_store(struct kobject *kobj, struct attribute *attr,
         const char *buf, size_t count)
{
 struct driver_attribute *drv_attr = to_drv_attr(attr);
 struct driver_private *drv_priv = to_driver(kobj);
 ssize_t ret = -EIO;

 if (drv_attr->store)
  ret = drv_attr->store(drv_priv->driver, buf, count);
 return ret;
}
