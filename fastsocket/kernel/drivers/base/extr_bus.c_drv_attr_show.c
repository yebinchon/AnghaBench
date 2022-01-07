
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct driver_private {int driver; } ;
struct driver_attribute {int (* show ) (int ,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (int ,char*) ;
 struct driver_private* to_driver (struct kobject*) ;
 struct driver_attribute* to_drv_attr (struct attribute*) ;

__attribute__((used)) static ssize_t drv_attr_show(struct kobject *kobj, struct attribute *attr,
        char *buf)
{
 struct driver_attribute *drv_attr = to_drv_attr(attr);
 struct driver_private *drv_priv = to_driver(kobj);
 ssize_t ret = -EIO;

 if (drv_attr->show)
  ret = drv_attr->show(drv_priv->driver, buf);
 return ret;
}
