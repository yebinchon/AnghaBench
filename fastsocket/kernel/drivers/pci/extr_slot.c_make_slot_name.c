
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int kobject_put (struct kobject*) ;
 struct kobject* kset_find_obj (int ,char*) ;
 char* kstrdup (char const*,int ) ;
 int pci_slots_kset ;
 int sprintf (char*,char*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char *make_slot_name(const char *name)
{
 char *new_name;
 int len, max, dup;

 new_name = kstrdup(name, GFP_KERNEL);
 if (!new_name)
  return ((void*)0);






 len = strlen(name) + 2;
 max = 1;
 dup = 1;

 for (;;) {
  struct kobject *dup_slot;
  dup_slot = kset_find_obj(pci_slots_kset, new_name);
  if (!dup_slot)
   break;
  kobject_put(dup_slot);
  if (dup == max) {
   len++;
   max *= 10;
   kfree(new_name);
   new_name = kmalloc(len, GFP_KERNEL);
   if (!new_name)
    break;
  }
  sprintf(new_name, "%s-%d", name, dup++);
 }

 return new_name;
}
