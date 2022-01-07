
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 void pci_cfg_access_unlock (struct pci_dev*) ;

void pci_unblock_user_cfg_access(struct pci_dev *dev)
{
 return pci_cfg_access_unlock(dev);
}
