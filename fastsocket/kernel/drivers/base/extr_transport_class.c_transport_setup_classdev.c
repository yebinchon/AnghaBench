
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct transport_class {int (* setup ) (struct transport_container*,struct device*,struct device*) ;} ;
struct device {int dummy; } ;
struct attribute_container {int class; } ;


 struct transport_container* attribute_container_to_transport_container (struct attribute_container*) ;
 struct transport_class* class_to_transport_class (int ) ;
 int stub1 (struct transport_container*,struct device*,struct device*) ;

__attribute__((used)) static int transport_setup_classdev(struct attribute_container *cont,
        struct device *dev,
        struct device *classdev)
{
 struct transport_class *tclass = class_to_transport_class(cont->class);
 struct transport_container *tcont = attribute_container_to_transport_container(cont);

 if (tclass->setup)
  tclass->setup(tcont, dev, classdev);

 return 0;
}
