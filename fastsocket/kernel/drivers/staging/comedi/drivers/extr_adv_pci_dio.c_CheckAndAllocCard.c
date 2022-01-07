
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dio_private {struct pci_dev* pcidev; struct pci_dio_private* next; struct pci_dio_private* prev; } ;
struct pci_dev {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_devconfig {int dummy; } ;


 struct pci_dio_private* devpriv ;
 struct pci_dio_private* pci_priv ;

__attribute__((used)) static int CheckAndAllocCard(struct comedi_device *dev,
        struct comedi_devconfig *it,
        struct pci_dev *pcidev)
{
 struct pci_dio_private *pr, *prev;

 for (pr = pci_priv, prev = ((void*)0); pr != ((void*)0); prev = pr, pr = pr->next) {
  if (pr->pcidev == pcidev) {
   return 0;
  }
 }

 if (prev) {
  devpriv->prev = prev;
  prev->next = devpriv;
 } else {
  pci_priv = devpriv;
 }

 devpriv->pcidev = pcidev;

 return 1;
}
