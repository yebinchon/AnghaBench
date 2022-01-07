
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_enable_device (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int pcie_portdrv_restore_config(struct pci_dev *dev)
{
 int retval;

 retval = pci_enable_device(dev);
 if (retval)
  return retval;
 pci_set_master(dev);
 return 0;
}
