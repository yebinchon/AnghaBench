
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {unsigned short vendor; unsigned short device; unsigned short pci_bus; unsigned short pci_slot; int used; struct pcilst_struct* next; } ;


 struct pcilst_struct* amcc_devices ;
 int printk (char*,unsigned short,unsigned short) ;

int i_find_free_pci_card_by_position(unsigned short vendor_id,
         unsigned short device_id,
         unsigned short pci_bus,
         unsigned short pci_slot,
         struct pcilst_struct **card)
{
 struct pcilst_struct *amcc, *next;

 *card = ((void*)0);
 for (amcc = amcc_devices; amcc; amcc = next) {
  next = amcc->next;
  if ((amcc->vendor == vendor_id) && (amcc->device == device_id)
      && (amcc->pci_bus == pci_bus)
      && (amcc->pci_slot == pci_slot)) {
   if (!(amcc->used)) {
    *card = amcc;
    return 0;
   } else {
    printk(" - \nCard on requested position is used b:s %d:%d!\n",
       pci_bus, pci_slot);
    return 2;
   }
  }
 }


 return 1;
}
