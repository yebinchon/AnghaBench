
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_type {int groups; } ;
struct device {int groups; struct device_type* type; struct class* class; } ;
struct class {int dev_attrs; } ;


 int device_add_attributes (struct device*,int ) ;
 int device_add_groups (struct device*,int ) ;
 int device_remove_attributes (struct device*,int ) ;
 int device_remove_groups (struct device*,int ) ;

__attribute__((used)) static int device_add_attrs(struct device *dev)
{
 struct class *class = dev->class;
 struct device_type *type = dev->type;
 int error;

 if (class) {
  error = device_add_attributes(dev, class->dev_attrs);
  if (error)
   return error;
 }

 if (type) {
  error = device_add_groups(dev, type->groups);
  if (error)
   goto err_remove_class_attrs;
 }

 error = device_add_groups(dev, dev->groups);
 if (error)
  goto err_remove_type_groups;

 return 0;

 err_remove_type_groups:
 if (type)
  device_remove_groups(dev, type->groups);
 err_remove_class_attrs:
 if (class)
  device_remove_attributes(dev, class->dev_attrs);

 return error;
}
