
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int state_saved; scalar_t__* saved_config_space; int dev; } ;


 int KERN_DEBUG ;
 int dev_printk (int ,int *,char*,int,scalar_t__,int) ;
 int pci_read_config_dword (struct pci_dev*,int,scalar_t__*) ;
 int pci_restore_ats_state (struct pci_dev*) ;
 int pci_restore_iov_state (struct pci_dev*) ;
 int pci_restore_msi_state (struct pci_dev*) ;
 int pci_restore_pcie_state (struct pci_dev*) ;
 int pci_restore_pcix_state (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int,scalar_t__) ;

int
pci_restore_state(struct pci_dev *dev)
{
 int i;
 u32 val;

 if (!dev->state_saved)
  return 0;


 pci_restore_pcie_state(dev);
 pci_restore_ats_state(dev);





 for (i = 15; i >= 0; i--) {
  pci_read_config_dword(dev, i * 4, &val);
  if (val != dev->saved_config_space[i]) {
   dev_printk(KERN_DEBUG, &dev->dev, "restoring config "
    "space at offset %#x (was %#x, writing %#x)\n",
    i, val, (int)dev->saved_config_space[i]);
   pci_write_config_dword(dev,i * 4,
    dev->saved_config_space[i]);
  }
 }
 pci_restore_pcix_state(dev);
 pci_restore_msi_state(dev);
 pci_restore_iov_state(dev);

 dev->state_saved = 0;

 return 0;
}
