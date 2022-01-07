
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct attribute_container {int dummy; } ;


 int attribute_container_add_class_device (struct device*) ;

int
attribute_container_add_class_device_adapter(struct attribute_container *cont,
          struct device *dev,
          struct device *classdev)
{
 return attribute_container_add_class_device(classdev);
}
