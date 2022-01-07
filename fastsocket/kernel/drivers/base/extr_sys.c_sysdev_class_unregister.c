
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct sysdev_class {TYPE_1__ kset; } ;


 int kobject_name (int *) ;
 int kset_unregister (TYPE_1__*) ;
 int pr_debug (char*,int ) ;

void sysdev_class_unregister(struct sysdev_class *cls)
{
 pr_debug("Unregistering sysdev class '%s'\n",
   kobject_name(&cls->kset.kobj));
 kset_unregister(&cls->kset);
}
