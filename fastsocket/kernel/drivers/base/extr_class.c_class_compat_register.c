
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct class_compat {int kobj; } ;
struct TYPE_2__ {int kobj; } ;


 int GFP_KERNEL ;
 TYPE_1__* class_kset ;
 int kfree (struct class_compat*) ;
 struct class_compat* kmalloc (int,int ) ;
 int kobject_create_and_add (char const*,int *) ;

struct class_compat *class_compat_register(const char *name)
{
 struct class_compat *cls;

 cls = kmalloc(sizeof(struct class_compat), GFP_KERNEL);
 if (!cls)
  return ((void*)0);
 cls->kobj = kobject_create_and_add(name, &class_kset->kobj);
 if (!cls->kobj) {
  kfree(cls);
  return ((void*)0);
 }
 return cls;
}
