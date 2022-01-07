
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {int kobj; } ;


 int ENOMEM ;
 int kfree (char*) ;
 int kobject_rename (int *,char*) ;
 char* make_slot_name (char const*) ;
 int pci_slot_name (struct pci_slot*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int rename_slot(struct pci_slot *slot, const char *name)
{
 int result = 0;
 char *slot_name;

 if (strcmp(pci_slot_name(slot), name) == 0)
  return result;

 slot_name = make_slot_name(name);
 if (!slot_name)
  return -ENOMEM;

 result = kobject_rename(&slot->kobj, slot_name);
 kfree(slot_name);

 return result;
}
