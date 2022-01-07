
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_class {int class; } ;


 int class_register (int *) ;

int transport_class_register(struct transport_class *tclass)
{
 return class_register(&tclass->class);
}
