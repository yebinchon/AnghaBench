
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* kset; int * ktype; int * parent; } ;
struct TYPE_7__ {TYPE_2__ kobj; } ;
struct sysdev_class {TYPE_3__ kset; int name; int drivers; } ;
struct kobject {int dummy; } ;
struct TYPE_5__ {int kobj; } ;


 int INIT_LIST_HEAD (int *) ;
 int kobject_set_name (TYPE_2__*,char*,int ) ;
 int kset_register (TYPE_3__*) ;
 int ktype_sysdev_class ;
 int memset (TYPE_2__*,int,int) ;
 int pr_debug (char*,int ) ;
 TYPE_1__* system_kset ;

int sysdev_class_register(struct sysdev_class *cls)
{
 int retval;

 pr_debug("Registering sysdev class '%s'\n", cls->name);

 INIT_LIST_HEAD(&cls->drivers);
 memset(&cls->kset.kobj, 0x00, sizeof(struct kobject));
 cls->kset.kobj.parent = &system_kset->kobj;
 cls->kset.kobj.ktype = &ktype_sysdev_class;
 cls->kset.kobj.kset = system_kset;

 retval = kobject_set_name(&cls->kset.kobj, "%s", cls->name);
 if (retval)
  return retval;

 return kset_register(&cls->kset);
}
