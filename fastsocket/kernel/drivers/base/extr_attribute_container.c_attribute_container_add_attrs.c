
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int kobj; } ;
struct attribute_container {scalar_t__ grp; struct device_attribute** attrs; } ;


 int BUG_ON (int) ;
 struct attribute_container* attribute_container_classdev_to_container (struct device*) ;
 int device_create_file (struct device*,struct device_attribute*) ;
 int sysfs_create_group (int *,scalar_t__) ;

int
attribute_container_add_attrs(struct device *classdev)
{
 struct attribute_container *cont =
  attribute_container_classdev_to_container(classdev);
 struct device_attribute **attrs = cont->attrs;
 int i, error;

 BUG_ON(attrs && cont->grp);

 if (!attrs && !cont->grp)
  return 0;

 if (cont->grp)
  return sysfs_create_group(&classdev->kobj, cont->grp);

 for (i = 0; attrs[i]; i++) {
  error = device_create_file(classdev, attrs[i]);
  if (error)
   return error;
 }

 return 0;
}
