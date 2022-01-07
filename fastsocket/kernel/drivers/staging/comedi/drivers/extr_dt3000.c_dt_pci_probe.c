
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct comedi_device {scalar_t__ board_ptr; } ;
struct TYPE_4__ {struct pci_dev* pci_dev; } ;
struct TYPE_3__ {int number; } ;


 int PCI_SLOT (int ) ;
 TYPE_2__* devpriv ;
 scalar_t__ dt3k_boardtypes ;
 struct pci_dev* dt_pci_find_device (struct pci_dev*,int*) ;
 int setup_pci (struct comedi_device*) ;

__attribute__((used)) static int dt_pci_probe(struct comedi_device *dev, int bus, int slot)
{
 int board;
 int ret;
 struct pci_dev *pcidev;

 pcidev = ((void*)0);
 while ((pcidev = dt_pci_find_device(pcidev, &board)) != ((void*)0)) {
  if ((bus == 0 && slot == 0) ||
      (pcidev->bus->number == bus &&
       PCI_SLOT(pcidev->devfn) == slot)) {
   break;
  }
 }
 devpriv->pci_dev = pcidev;

 if (board >= 0)
  dev->board_ptr = dt3k_boardtypes + board;

 if (!devpriv->pci_dev)
  return 0;

 ret = setup_pci(dev);
 if (ret < 0)
  return ret;

 return 1;
}
