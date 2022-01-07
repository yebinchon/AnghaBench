
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int is_physfn; } ;


 int might_sleep () ;
 int pci_sriov_enabled ;
 int sriov_disable (struct pci_dev*) ;

void pci_disable_sriov(struct pci_dev *dev)
{
 might_sleep();

 if (!pci_sriov_enabled)
  return;

 if (!dev->is_physfn)
  return;

 sriov_disable(dev);
}
