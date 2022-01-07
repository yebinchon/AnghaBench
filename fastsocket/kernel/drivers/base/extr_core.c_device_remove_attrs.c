
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_type {int groups; } ;
struct device {int groups; struct device_type* type; struct class* class; } ;
struct class {int dev_attrs; } ;


 int device_remove_attributes (struct device*,int ) ;
 int device_remove_groups (struct device*,int ) ;

__attribute__((used)) static void device_remove_attrs(struct device *dev)
{
 struct class *class = dev->class;
 struct device_type *type = dev->type;

 device_remove_groups(dev, dev->groups);

 if (type)
  device_remove_groups(dev, type->groups);

 if (class)
  device_remove_attributes(dev, class->dev_attrs);
}
