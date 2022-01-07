
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct bus_type_private {int bus; } ;
struct bus_attribute {int (* show ) (int ,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int stub1 (int ,char*) ;
 struct bus_type_private* to_bus (struct kobject*) ;
 struct bus_attribute* to_bus_attr (struct attribute*) ;

__attribute__((used)) static ssize_t bus_attr_show(struct kobject *kobj, struct attribute *attr,
        char *buf)
{
 struct bus_attribute *bus_attr = to_bus_attr(attr);
 struct bus_type_private *bus_priv = to_bus(kobj);
 ssize_t ret = 0;

 if (bus_attr->show)
  ret = bus_attr->show(bus_priv->bus, buf);
 return ret;
}
