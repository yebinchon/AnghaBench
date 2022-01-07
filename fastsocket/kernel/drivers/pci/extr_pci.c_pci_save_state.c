
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int state_saved; int * saved_config_space; } ;


 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_save_pcie_state (struct pci_dev*) ;
 int pci_save_pcix_state (struct pci_dev*) ;

int
pci_save_state(struct pci_dev *dev)
{
 int i;

 for (i = 0; i < 16; i++)
  pci_read_config_dword(dev, i * 4,&dev->saved_config_space[i]);
 dev->state_saved = 1;
 if ((i = pci_save_pcie_state(dev)) != 0)
  return i;
 if ((i = pci_save_pcix_state(dev)) != 0)
  return i;
 return 0;
}
