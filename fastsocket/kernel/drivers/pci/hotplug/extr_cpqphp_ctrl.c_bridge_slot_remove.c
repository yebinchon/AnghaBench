
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_func {int* config_space; size_t bus; struct pci_func* next; } ;


 struct pci_func** cpqhp_slot_list ;
 int kfree (struct pci_func*) ;
 int slot_remove (struct pci_func*) ;

__attribute__((used)) static int bridge_slot_remove(struct pci_func *bridge)
{
 u8 subordinateBus, secondaryBus;
 u8 tempBus;
 struct pci_func *next;

 secondaryBus = (bridge->config_space[0x06] >> 8) & 0xFF;
 subordinateBus = (bridge->config_space[0x06] >> 16) & 0xFF;

 for (tempBus = secondaryBus; tempBus <= subordinateBus; tempBus++) {
  next = cpqhp_slot_list[tempBus];

  while (!slot_remove(next))
   next = cpqhp_slot_list[tempBus];
 }

 next = cpqhp_slot_list[bridge->bus];

 if (next == ((void*)0))
  return 1;

 if (next == bridge) {
  cpqhp_slot_list[bridge->bus] = bridge->next;
  goto out;
 }

 while ((next->next != bridge) && (next->next != ((void*)0)))
  next = next->next;

 if (next->next != bridge)
  return 2;
 next->next = bridge->next;
out:
 kfree(bridge);
 return 0;
}
