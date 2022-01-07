
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 scalar_t__ PCI_VPD_DATA ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static void skge_vpd_write(struct pci_dev *pdev, int cap, u16 offset, u32 val)
{
 pci_write_config_dword(pdev, cap + PCI_VPD_DATA, val);
 pci_write_config_word(pdev, cap + PCI_VPD_ADDR,
         offset | PCI_VPD_ADDR_F);

 do {
  pci_read_config_word(pdev, cap + PCI_VPD_ADDR, &offset);
 } while (offset & PCI_VPD_ADDR_F);
}
