
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int dev_err (int *,char*,int,int) ;
 int pci_cfg_access_lock (struct pci_dev*) ;
 int pci_cfg_access_unlock (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

bool pci_intx_mask_supported(struct pci_dev *dev)
{
 bool mask_supported = 0;
 u16 orig, new;

 pci_cfg_access_lock(dev);

 pci_read_config_word(dev, PCI_COMMAND, &orig);
 pci_write_config_word(dev, PCI_COMMAND,
         orig ^ PCI_COMMAND_INTX_DISABLE);
 pci_read_config_word(dev, PCI_COMMAND, &new);






 if ((new ^ orig) & ~PCI_COMMAND_INTX_DISABLE) {
  dev_err(&dev->dev, "Command register changed from "
   "0x%x to 0x%x: driver or hardware bug?\n", orig, new);
 } else if ((new ^ orig) & PCI_COMMAND_INTX_DISABLE) {
  mask_supported = 1;
  pci_write_config_word(dev, PCI_COMMAND, orig);
 }

 pci_cfg_access_unlock(dev);
 return mask_supported;
}
