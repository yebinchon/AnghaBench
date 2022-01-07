
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcilst_struct {unsigned short vendor; int irq; int * io_addr; int pci_func; int pci_slot; int pci_bus; int device; struct pcilst_struct* next; int pcidev; } ;
struct pci_dev {unsigned short vendor; int irq; int devfn; TYPE_1__* bus; int device; } ;
struct TYPE_2__ {int number; } ;


 int GFP_KERNEL ;
 int PCI_ANY_ID ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 struct pcilst_struct* inova_devices ;
 struct pcilst_struct* kmalloc (int,int ) ;
 int memset (struct pcilst_struct*,int ,int) ;
 int pci_card_list_display () ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int printk (char*) ;

__attribute__((used)) static void pci_card_list_init(unsigned short pci_vendor, char display)
{
 struct pci_dev *pcidev;
 struct pcilst_struct *inova, *last;
 int i;

 inova_devices = ((void*)0);
 last = ((void*)0);

 for (pcidev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
      pcidev != ((void*)0);
      pcidev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {
  if (pcidev->vendor == pci_vendor) {
   inova = kmalloc(sizeof(*inova), GFP_KERNEL);
   if (!inova) {
    printk
        ("icp_multi: pci_card_list_init: allocation failed\n");
    pci_dev_put(pcidev);
    break;
   }
   memset(inova, 0, sizeof(*inova));

   inova->pcidev = pci_dev_get(pcidev);
   if (last) {
    last->next = inova;
   } else {
    inova_devices = inova;
   }
   last = inova;

   inova->vendor = pcidev->vendor;
   inova->device = pcidev->device;
   inova->pci_bus = pcidev->bus->number;
   inova->pci_slot = PCI_SLOT(pcidev->devfn);
   inova->pci_func = PCI_FUNC(pcidev->devfn);



   for (i = 0; i < 5; i++)
    inova->io_addr[i] =
        pci_resource_start(pcidev, i);
   inova->irq = pcidev->irq;
  }
 }

 if (display)
  pci_card_list_display();
}
