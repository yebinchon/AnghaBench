
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct aer_err_info {scalar_t__ severity; int status; } ;


 scalar_t__ AER_CORRECTABLE ;
 scalar_t__ PCI_ERR_COR_STATUS ;
 int PCI_EXT_CAP_ID_ERR ;
 int do_recovery (struct pci_dev*,scalar_t__) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static void handle_error_source(struct pcie_device *aerdev,
 struct pci_dev *dev,
 struct aer_err_info *info)
{
 int pos;

 if (info->severity == AER_CORRECTABLE) {




  pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);
  if (pos)
   pci_write_config_dword(dev, pos + PCI_ERR_COR_STATUS,
     info->status);
 } else
  do_recovery(dev, info->severity);
}
