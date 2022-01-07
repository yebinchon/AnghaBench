
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 scalar_t__ PCIE_BUS_PERFORMANCE ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ pcie_bus_config ;
 int pcie_get_mps (struct pci_dev*) ;
 int pcie_get_readrq (struct pci_dev*) ;
 int pcie_set_readrq (struct pci_dev*,int) ;

__attribute__((used)) static void pcie_write_mrrs(struct pci_dev *dev)
{
 int rc, mrrs;




 if (pcie_bus_config != PCIE_BUS_PERFORMANCE)
  return;






 mrrs = pcie_get_mps(dev);






 while (mrrs != pcie_get_readrq(dev) && mrrs >= 128) {
  rc = pcie_set_readrq(dev, mrrs);
  if (!rc)
   break;

  dev_warn(&dev->dev, "Failed attempting to set the MRRS\n");
  mrrs /= 2;
 }

 if (mrrs < 128)
  dev_err(&dev->dev, "MRRS was unable to be configured with a "
   "safe value.  If problems are experienced, try running "
   "with pci=pcie_bus_safe.\n");
}
