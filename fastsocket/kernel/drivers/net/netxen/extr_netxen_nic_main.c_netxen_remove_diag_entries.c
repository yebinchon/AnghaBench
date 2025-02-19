
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_2__ {scalar_t__ md_template; } ;
struct netxen_adapter {TYPE_1__ mdump; struct pci_dev* pdev; } ;


 int bin_attr_crb ;
 int bin_attr_dimm ;
 int bin_attr_fw_dump ;
 int bin_attr_mem ;
 int dev_attr_diag_mode ;
 int dev_attr_fwdump_level ;
 int dev_attr_fwdump_size ;
 int dev_attr_fwdump_state ;
 int device_remove_bin_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static void
netxen_remove_diag_entries(struct netxen_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct device *dev = &pdev->dev;

 device_remove_file(dev, &dev_attr_diag_mode);
 device_remove_bin_file(dev, &bin_attr_crb);
 device_remove_bin_file(dev, &bin_attr_mem);

 if (adapter->mdump.md_template) {
  device_remove_bin_file(dev, &bin_attr_fw_dump);
  device_remove_file(dev, &dev_attr_fwdump_size);
  device_remove_file(dev, &dev_attr_fwdump_level);
  device_remove_file(dev, &dev_attr_fwdump_state);
  device_remove_bin_file(dev, &bin_attr_dimm);
 }
}
