
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct controller {TYPE_1__* pcie; } ;
struct TYPE_2__ {struct pci_dev* port; } ;


 int PCI_ERR_COR_BAD_DLLP ;
 scalar_t__ PCI_ERR_COR_MASK ;
 int PCI_EXT_CAP_ID_ERR ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static inline void pcie_unmask_bad_dllp(struct controller *ctrl)
{
 struct pci_dev *dev = ctrl->pcie->port;
 u32 reg;
 int pos;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);
 if (!pos)
  return;
 pci_read_config_dword(dev, pos + PCI_ERR_COR_MASK, &reg);
 if (!(reg & PCI_ERR_COR_BAD_DLLP))
  return;
 reg &= ~PCI_ERR_COR_BAD_DLLP;
 pci_write_config_dword(dev, pos + PCI_ERR_COR_MASK, reg);
}
