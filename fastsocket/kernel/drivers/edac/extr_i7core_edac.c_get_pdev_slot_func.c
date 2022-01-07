
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int devfn; } ;
struct i7core_dev {int n_devs; struct pci_dev** pdev; } ;


 unsigned int PCI_FUNC (int ) ;
 unsigned int PCI_SLOT (int ) ;
 struct i7core_dev* get_i7core_dev (int ) ;

__attribute__((used)) static struct pci_dev *get_pdev_slot_func(u8 socket, unsigned slot,
       unsigned func)
{
 struct i7core_dev *i7core_dev = get_i7core_dev(socket);
 int i;

 if (!i7core_dev)
  return ((void*)0);

 for (i = 0; i < i7core_dev->n_devs; i++) {
  if (!i7core_dev->pdev[i])
   continue;

  if (PCI_SLOT(i7core_dev->pdev[i]->devfn) == slot &&
      PCI_FUNC(i7core_dev->pdev[i]->devfn) == func) {
   return i7core_dev->pdev[i];
  }
 }

 return ((void*)0);
}
