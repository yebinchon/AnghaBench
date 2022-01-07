
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sbridge_dev {int n_devs; struct pci_dev** pdev; } ;
struct pci_dev {int devfn; } ;


 unsigned int PCI_FUNC (int ) ;
 unsigned int PCI_SLOT (int ) ;
 int debugf1 (char*,int ,unsigned int,unsigned int,struct pci_dev*) ;
 struct sbridge_dev* get_sbridge_dev (int ) ;

__attribute__((used)) static struct pci_dev *get_pdev_slot_func(u8 bus, unsigned slot,
       unsigned func)
{
 struct sbridge_dev *sbridge_dev = get_sbridge_dev(bus);
 int i;

 if (!sbridge_dev)
  return ((void*)0);

 for (i = 0; i < sbridge_dev->n_devs; i++) {
  if (!sbridge_dev->pdev[i])
   continue;

  if (PCI_SLOT(sbridge_dev->pdev[i]->devfn) == slot &&
      PCI_FUNC(sbridge_dev->pdev[i]->devfn) == func) {
   debugf1("Associated %02x.%02x.%d with %p\n",
    bus, slot, func, sbridge_dev->pdev[i]);
   return sbridge_dev->pdev[i];
  }
 }

 return ((void*)0);
}
