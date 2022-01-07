
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int hdr_type; } ;
struct TYPE_2__ {int dw0; int dw1; int dw2; int dw3; } ;
struct aer_err_info {int status; int tlp_header_valid; scalar_t__ severity; int mask; TYPE_1__ tlp; int first_error; } ;


 scalar_t__ AER_CORRECTABLE ;
 int AER_LOG_TLP_MASKS ;
 scalar_t__ AER_NONFATAL ;
 scalar_t__ PCI_ERR_CAP ;
 int PCI_ERR_CAP_FEP (int) ;
 scalar_t__ PCI_ERR_COR_MASK ;
 scalar_t__ PCI_ERR_COR_STATUS ;
 scalar_t__ PCI_ERR_HEADER_LOG ;
 scalar_t__ PCI_ERR_UNCOR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_STATUS ;
 int PCI_EXT_CAP_ID_ERR ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static int get_device_error_info(struct pci_dev *dev, struct aer_err_info *info)
{
 int pos, temp;


 info->status = 0;
 info->tlp_header_valid = 0;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);


 if (!pos)
  return 1;

 if (info->severity == AER_CORRECTABLE) {
  pci_read_config_dword(dev, pos + PCI_ERR_COR_STATUS,
   &info->status);
  pci_read_config_dword(dev, pos + PCI_ERR_COR_MASK,
   &info->mask);
  if (!(info->status & ~info->mask))
   return 0;
 } else if (dev->hdr_type & PCI_HEADER_TYPE_BRIDGE ||
  info->severity == AER_NONFATAL) {


  pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS,
   &info->status);
  pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_MASK,
   &info->mask);
  if (!(info->status & ~info->mask))
   return 0;


  pci_read_config_dword(dev, pos + PCI_ERR_CAP, &temp);
  info->first_error = PCI_ERR_CAP_FEP(temp);

  if (info->status & AER_LOG_TLP_MASKS) {
   info->tlp_header_valid = 1;
   pci_read_config_dword(dev,
    pos + PCI_ERR_HEADER_LOG, &info->tlp.dw0);
   pci_read_config_dword(dev,
    pos + PCI_ERR_HEADER_LOG + 4, &info->tlp.dw1);
   pci_read_config_dword(dev,
    pos + PCI_ERR_HEADER_LOG + 8, &info->tlp.dw2);
   pci_read_config_dword(dev,
    pos + PCI_ERR_HEADER_LOG + 12, &info->tlp.dw3);
  }
 }

 return 1;
}
