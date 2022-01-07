
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ vendor; } ;
struct mite_struct {struct mite_struct* next; TYPE_1__* channels; int pcidev; int lock; } ;
struct TYPE_2__ {unsigned int channel; int done; struct mite_struct* mite; } ;


 int GFP_KERNEL ;
 unsigned int MAX_MITE_DMA_CHANNELS ;
 int PCI_ANY_ID ;
 scalar_t__ PCI_VENDOR_ID_NATINST ;
 struct mite_struct* kzalloc (int,int ) ;
 struct mite_struct* mite_devices ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int printk (char*) ;
 int spin_lock_init (int *) ;

void mite_init(void)
{
 struct pci_dev *pcidev;
 struct mite_struct *mite;

 for (pcidev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
      pcidev != ((void*)0);
      pcidev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {
  if (pcidev->vendor == PCI_VENDOR_ID_NATINST) {
   unsigned i;

   mite = kzalloc(sizeof(*mite), GFP_KERNEL);
   if (!mite) {
    printk("mite: allocation failed\n");
    pci_dev_put(pcidev);
    return;
   }
   spin_lock_init(&mite->lock);
   mite->pcidev = pci_dev_get(pcidev);
   for (i = 0; i < MAX_MITE_DMA_CHANNELS; ++i) {
    mite->channels[i].mite = mite;
    mite->channels[i].channel = i;
    mite->channels[i].done = 1;
   }
   mite->next = mite_devices;
   mite_devices = mite;
  }
 }
}
