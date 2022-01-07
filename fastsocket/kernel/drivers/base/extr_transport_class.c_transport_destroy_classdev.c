
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_class {scalar_t__ remove; } ;
struct device {int dummy; } ;
struct attribute_container {int class; } ;


 scalar_t__ anon_transport_dummy_function ;
 struct transport_class* class_to_transport_class (int ) ;
 int put_device (struct device*) ;

__attribute__((used)) static void transport_destroy_classdev(struct attribute_container *cont,
          struct device *dev,
          struct device *classdev)
{
 struct transport_class *tclass = class_to_transport_class(cont->class);

 if (tclass->remove != anon_transport_dummy_function)
  put_device(classdev);
}
