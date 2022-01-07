
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {int dummy; } ;


 struct pcilst_struct* find_free_pci_card_by_device (unsigned short,unsigned short) ;
 int find_free_pci_card_by_position (unsigned short,unsigned short,unsigned short,unsigned short,struct pcilst_struct**) ;
 int pci_card_alloc (struct pcilst_struct*) ;
 int printk (char*,...) ;

__attribute__((used)) static struct pcilst_struct *select_and_alloc_pci_card(unsigned short vendor_id,
             unsigned short device_id,
             unsigned short pci_bus,
             unsigned short pci_slot)
{
 struct pcilst_struct *card;
 int err;

 if ((pci_bus < 1) & (pci_slot < 1)) {

  card = find_free_pci_card_by_device(vendor_id, device_id);
  if (card == ((void*)0)) {
   printk(" - Unused card not found in system!\n");
   return ((void*)0);
  }
 } else {
  switch (find_free_pci_card_by_position(vendor_id, device_id,
             pci_bus, pci_slot,
             &card)) {
  case 1:
   printk
       (" - Card not found on requested position b:s %d:%d!\n",
        pci_bus, pci_slot);
   return ((void*)0);
  case 2:
   printk
       (" - Card on requested position is used b:s %d:%d!\n",
        pci_bus, pci_slot);
   return ((void*)0);
  }
 }

 err = pci_card_alloc(card);
 if (err != 0) {
  if (err > 0)
   printk(" - Can't allocate card!\n");

  return ((void*)0);
 }

 return card;
}
