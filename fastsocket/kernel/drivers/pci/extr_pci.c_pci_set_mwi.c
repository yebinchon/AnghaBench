
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INVALIDATE ;
 int dev_dbg (int *,char*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_set_cacheline_size (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

int
pci_set_mwi(struct pci_dev *dev)
{
 int rc;
 u16 cmd;

 rc = pci_set_cacheline_size(dev);
 if (rc)
  return rc;

 pci_read_config_word(dev, PCI_COMMAND, &cmd);
 if (! (cmd & PCI_COMMAND_INVALIDATE)) {
  dev_dbg(&dev->dev, "enabling Mem-Wr-Inval\n");
  cmd |= PCI_COMMAND_INVALIDATE;
  pci_write_config_word(dev, PCI_COMMAND, cmd);
 }

 return 0;
}
