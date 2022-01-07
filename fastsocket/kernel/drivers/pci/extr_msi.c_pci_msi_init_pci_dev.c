
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int msi_list; } ;


 int INIT_LIST_HEAD (int *) ;

void pci_msi_init_pci_dev(struct pci_dev *dev)
{
 INIT_LIST_HEAD(&dev->msi_list);
}
