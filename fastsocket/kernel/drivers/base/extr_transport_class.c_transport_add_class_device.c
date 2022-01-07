
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {scalar_t__ statistics; } ;
struct device {int kobj; } ;
struct attribute_container {int dummy; } ;


 int attribute_container_add_class_device (struct device*) ;
 struct transport_container* attribute_container_to_transport_container (struct attribute_container*) ;
 int sysfs_create_group (int *,scalar_t__) ;

__attribute__((used)) static int transport_add_class_device(struct attribute_container *cont,
          struct device *dev,
          struct device *classdev)
{
 int error = attribute_container_add_class_device(classdev);
 struct transport_container *tcont =
  attribute_container_to_transport_container(cont);

 if (!error && tcont->statistics)
  error = sysfs_create_group(&classdev->kobj, tcont->statistics);

 return error;
}
