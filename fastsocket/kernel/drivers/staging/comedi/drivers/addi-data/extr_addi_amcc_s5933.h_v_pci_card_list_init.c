
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcilst_struct {unsigned short vendor; int irq; int * io_addr; int pci_func; int pci_slot; int pci_bus; int device; struct pcilst_struct* next; struct pci_dev* pcidev; } ;
struct pci_dev {unsigned short vendor; int irq; int devfn; TYPE_1__* bus; int device; } ;
struct TYPE_2__ {int number; } ;


 int GFP_KERNEL ;
 int PCI_ANY_ID ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 struct pcilst_struct* amcc_devices ;
 unsigned short* i_ADDIDATADeviceID ;
 struct pcilst_struct* kmalloc (int,int ) ;
 int memset (struct pcilst_struct*,int ,int) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int v_pci_card_list_display () ;

void v_pci_card_list_init(unsigned short pci_vendor, char display)
{
 struct pci_dev *pcidev;
 struct pcilst_struct *amcc, *last;
 int i;
 int i_Count = 0;
 amcc_devices = ((void*)0);
 last = ((void*)0);

 for (pcidev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
      pcidev != ((void*)0);
      pcidev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {
  for (i_Count = 0; i_Count < 2; i_Count++) {
   pci_vendor = i_ADDIDATADeviceID[i_Count];
   if (pcidev->vendor == pci_vendor) {
    amcc = kmalloc(sizeof(*amcc), GFP_KERNEL);
    if (amcc == ((void*)0))
     continue;

    memset(amcc, 0, sizeof(*amcc));

    amcc->pcidev = pcidev;
    if (last)
     last->next = amcc;
    else
     amcc_devices = amcc;
    last = amcc;

    amcc->vendor = pcidev->vendor;
    amcc->device = pcidev->device;
    amcc->pci_bus = pcidev->bus->number;
    amcc->pci_slot = PCI_SLOT(pcidev->devfn);
    amcc->pci_func = PCI_FUNC(pcidev->devfn);



    for (i = 0; i < 5; i++)
     amcc->io_addr[i] =
         pci_resource_start(pcidev, i);
    amcc->irq = pcidev->irq;

   }
  }
 }

 if (display)
  v_pci_card_list_display();
}
