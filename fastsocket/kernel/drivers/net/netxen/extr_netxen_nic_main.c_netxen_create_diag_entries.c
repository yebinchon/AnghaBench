
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_3__ {scalar_t__ md_template; } ;
struct netxen_adapter {TYPE_2__* netdev; TYPE_1__ mdump; struct pci_dev* pdev; } ;
struct TYPE_4__ {int name; } ;


 int bin_attr_crb ;
 int bin_attr_dimm ;
 int bin_attr_fw_dump ;
 int bin_attr_mem ;
 int dev_attr_diag_mode ;
 int dev_attr_fwdump_level ;
 int dev_attr_fwdump_size ;
 int dev_attr_fwdump_state ;
 int dev_info (struct device*,char*,...) ;
 scalar_t__ device_create_bin_file (struct device*,int *) ;
 scalar_t__ device_create_file (struct device*,int *) ;

__attribute__((used)) static void
netxen_create_diag_entries(struct netxen_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct device *dev;

 dev = &pdev->dev;
 if (adapter->mdump.md_template) {
  dev_info(&pdev->dev, "%s: Supports Fw Dump Capability\n",
    adapter->netdev->name);
  if (device_create_file(dev, &dev_attr_fwdump_state))
   dev_info(dev, "failed to create fwdump_state "
     "sysfs entry\n");
  if (device_create_bin_file(dev, &bin_attr_fw_dump))
   dev_info(dev, "failed to create fw_dump sysfs entry\n");
  if (device_create_file(dev, &dev_attr_fwdump_size))
   dev_info(dev, "failed to create fwdump_size "
     "sysfs entry\n");
  if (device_create_file(dev, &dev_attr_fwdump_level))
   dev_info(dev, "failed to create fwdump_level "
     "sysfs entry\n");
 }
 if (device_create_file(dev, &dev_attr_diag_mode))
  dev_info(dev, "failed to create diag_mode sysfs entry\n");
 if (device_create_bin_file(dev, &bin_attr_crb))
  dev_info(dev, "failed to create crb sysfs entry\n");
 if (device_create_bin_file(dev, &bin_attr_mem))
  dev_info(dev, "failed to create mem sysfs entry\n");
 if (device_create_bin_file(dev, &bin_attr_dimm))
  dev_info(dev, "failed to create dimm sysfs entry\n");
}
