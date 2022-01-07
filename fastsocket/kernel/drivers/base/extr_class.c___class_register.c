
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lock_class_key {int dummy; } ;
struct TYPE_4__ {int * ktype; void* kset; } ;
struct TYPE_3__ {TYPE_2__ kobj; } ;
struct class_private {TYPE_1__ class_subsys; struct class* class; int class_mutex; int class_dirs; int class_interfaces; int class_devices; } ;
struct class {struct class_private* p; scalar_t__ dev_kobj; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __mutex_init (int *,char*,struct lock_class_key*) ;
 int add_class_attrs (int ) ;
 struct class block_class ;
 int class_get (struct class*) ;
 void* class_kset ;
 int class_ktype ;
 int class_put (struct class*) ;
 int kfree (struct class_private*) ;
 int klist_class_dev_get ;
 int klist_class_dev_put ;
 int klist_init (int *,int ,int ) ;
 int kobject_set_name (TYPE_2__*,char*,int ) ;
 int kset_init (int *) ;
 int kset_register (TYPE_1__*) ;
 struct class_private* kzalloc (int,int ) ;
 int pr_debug (char*,int ) ;
 scalar_t__ sysfs_dev_char_kobj ;

int __class_register(struct class *cls, struct lock_class_key *key)
{
 struct class_private *cp;
 int error;

 pr_debug("device class '%s': registering\n", cls->name);

 cp = kzalloc(sizeof(*cp), GFP_KERNEL);
 if (!cp)
  return -ENOMEM;
 klist_init(&cp->class_devices, klist_class_dev_get, klist_class_dev_put);
 INIT_LIST_HEAD(&cp->class_interfaces);
 kset_init(&cp->class_dirs);
 __mutex_init(&cp->class_mutex, "struct class mutex", key);
 error = kobject_set_name(&cp->class_subsys.kobj, "%s", cls->name);
 if (error) {
  kfree(cp);
  return error;
 }


 if (!cls->dev_kobj)
  cls->dev_kobj = sysfs_dev_char_kobj;






 cp->class_subsys.kobj.kset = class_kset;

 cp->class_subsys.kobj.ktype = &class_ktype;
 cp->class = cls;
 cls->p = cp;

 error = kset_register(&cp->class_subsys);
 if (error) {
  kfree(cp);
  return error;
 }
 error = add_class_attrs(class_get(cls));
 class_put(cls);
 return error;
}
