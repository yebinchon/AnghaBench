
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int attribute_container_add_attrs (struct device*) ;
 int device_add (struct device*) ;

int
attribute_container_add_class_device(struct device *classdev)
{
 int error = device_add(classdev);
 if (error)
  return error;
 return attribute_container_add_attrs(classdev);
}
