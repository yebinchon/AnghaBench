
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct class {TYPE_1__* p; int name; } ;
struct TYPE_2__ {int class_subsys; } ;


 int kset_unregister (int *) ;
 int pr_debug (char*,int ) ;
 int remove_class_attrs (struct class*) ;

void class_unregister(struct class *cls)
{
 pr_debug("device class '%s': unregistering\n", cls->name);
 remove_class_attrs(cls);
 kset_unregister(&cls->p->class_subsys);
}
