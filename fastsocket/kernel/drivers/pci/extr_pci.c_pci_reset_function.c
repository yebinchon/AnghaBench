
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int pci_dev_reset (struct pci_dev*,int) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

int pci_reset_function(struct pci_dev *dev)
{
 int rc;

 rc = pci_dev_reset(dev, 1);
 if (rc)
  return rc;

 pci_save_state(dev);





 pci_write_config_word(dev, PCI_COMMAND, PCI_COMMAND_INTX_DISABLE);

 rc = pci_dev_reset(dev, 0);

 pci_restore_state(dev);

 return rc;
}
