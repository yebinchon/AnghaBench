
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {scalar_t__ vendor; scalar_t__ device; int irq; int devfn; TYPE_1__* bus; } ;
struct comedi_device {int minor; TYPE_2__* board_ptr; } ;
struct TYPE_7__ {struct pci_dev* pci_dev; } ;
struct TYPE_6__ {scalar_t__ dev_id; int name; } ;
struct TYPE_5__ {int number; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EIO ;
 int PCI_ANY_ID ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 scalar_t__ PCI_VENDOR_ID_ADLINK ;
 TYPE_3__* devpriv ;
 TYPE_2__* pci6208_boards ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int printk (char*,int ,int,int,...) ;

__attribute__((used)) static int pci6208_find_device(struct comedi_device *dev, int bus, int slot)
{
 struct pci_dev *pci_dev;
 int i;

 for (pci_dev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
      pci_dev != ((void*)0);
      pci_dev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, pci_dev)) {
  if (pci_dev->vendor == PCI_VENDOR_ID_ADLINK) {
   for (i = 0; i < ARRAY_SIZE(pci6208_boards); i++) {
    if (pci6208_boards[i].dev_id == pci_dev->device) {

     if ((bus != 0) || (slot != 0)) {

      if (pci_dev->bus->number
          != bus ||
          PCI_SLOT(pci_dev->devfn)
          != slot) {
       continue;
      }
     }
     dev->board_ptr = pci6208_boards + i;
     goto found;
    }
   }
  }
 }

 printk("comedi%d: no supported board found! (req. bus/slot : %d/%d)\n",
        dev->minor, bus, slot);
 return -EIO;

found:
 printk("comedi%d: found %s (b:s:f=%d:%d:%d) , irq=%d\n",
        dev->minor,
        pci6208_boards[i].name,
        pci_dev->bus->number,
        PCI_SLOT(pci_dev->devfn),
        PCI_FUNC(pci_dev->devfn), pci_dev->irq);






 devpriv->pci_dev = pci_dev;

 return 0;
}
