
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;


 int DLPAR_KOBJ_NAME ;
 int EINVAL ;
 int dlpar_attr_group ;
 int dlpar_kobj ;
 int kobject_create_and_add (int ,int *) ;
 int kobject_put (int ) ;
 TYPE_1__* pci_slots_kset ;
 int sysfs_create_group (int ,int *) ;

int dlpar_sysfs_init(void)
{
 int error;

 dlpar_kobj = kobject_create_and_add(DLPAR_KOBJ_NAME,
         &pci_slots_kset->kobj);
 if (!dlpar_kobj)
  return -EINVAL;

 error = sysfs_create_group(dlpar_kobj, &dlpar_attr_group);
 if (error)
  kobject_put(dlpar_kobj);
 return error;
}
