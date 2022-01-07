
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_transport_class {int container; } ;


 int BUG () ;
 int attribute_container_unregister (int *) ;
 scalar_t__ unlikely (int ) ;

void anon_transport_class_unregister(struct anon_transport_class *atc)
{
 if (unlikely(attribute_container_unregister(&atc->container)))
  BUG();
}
