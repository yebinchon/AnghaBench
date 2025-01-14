
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;


 int EIO ;
 scalar_t__ PCI_ERR_UNCOR_STATUS ;
 int PCI_EXT_CAP_ID_ERR ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,scalar_t__*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,scalar_t__) ;

int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *dev)
{
 int pos;
 u32 status;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);
 if (!pos)
  return -EIO;

 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS, &status);
 if (status)
  pci_write_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS, status);

 return 0;
}
