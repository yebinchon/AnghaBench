
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;


 int PCI_CAP_ID_EXP ;
 int PCI_CAP_ID_PCIX ;
 int PCI_EXP_SAVE_REGS ;
 int dev_err (int *,char*) ;
 int pci_add_cap_save_buffer (struct pci_dev*,int ,int) ;

void pci_allocate_cap_save_buffers(struct pci_dev *dev)
{
 int error;

 error = pci_add_cap_save_buffer(dev, PCI_CAP_ID_EXP,
     PCI_EXP_SAVE_REGS * sizeof(u16));
 if (error)
  dev_err(&dev->dev,
   "unable to preallocate PCI Express save buffer\n");

 error = pci_add_cap_save_buffer(dev, PCI_CAP_ID_PCIX, sizeof(u16));
 if (error)
  dev_err(&dev->dev,
   "unable to preallocate PCI-X save buffer\n");
}
