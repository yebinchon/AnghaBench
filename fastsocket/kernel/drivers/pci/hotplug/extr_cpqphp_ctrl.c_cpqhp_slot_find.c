
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_func {size_t device; struct pci_func* next; } ;


 struct pci_func** cpqhp_slot_list ;

struct pci_func *cpqhp_slot_find(u8 bus, u8 device, u8 index)
{
 int found = -1;
 struct pci_func *func;

 func = cpqhp_slot_list[bus];

 if ((func == ((void*)0)) || ((func->device == device) && (index == 0)))
  return func;

 if (func->device == device)
  found++;

 while (func->next != ((void*)0)) {
  func = func->next;

  if (func->device == device)
   found++;

  if (found == index)
   return func;
 }

 return ((void*)0);
}
