
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ device; } ;
struct TYPE_2__ {scalar_t__ device_id; } ;


 int PCI_ANY_ID ;
 int PCI_VENDOR_ID_DT ;
 TYPE_1__* dt3k_boardtypes ;
 int n_dt3k_boards ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int printk (char*,scalar_t__) ;

__attribute__((used)) static struct pci_dev *dt_pci_find_device(struct pci_dev *from, int *board)
{
 int i;

 for (from = pci_get_device(PCI_VENDOR_ID_DT, PCI_ANY_ID, from);
      from != ((void*)0);
      from = pci_get_device(PCI_VENDOR_ID_DT, PCI_ANY_ID, from)) {
  for (i = 0; i < n_dt3k_boards; i++) {
   if (from->device == dt3k_boardtypes[i].device_id) {
    *board = i;
    return from;
   }
  }
  printk
      ("unknown Data Translation PCI device found with device_id=0x%04x\n",
       from->device);
 }
 *board = -1;
 return from;
}
