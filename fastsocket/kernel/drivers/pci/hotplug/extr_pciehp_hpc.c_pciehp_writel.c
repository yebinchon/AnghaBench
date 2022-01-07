
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct controller {TYPE_1__* pcie; } ;
struct TYPE_2__ {struct pci_dev* port; } ;


 int pcie_capability_write_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static inline int pciehp_writel(struct controller *ctrl, int reg, u32 value)
{
 struct pci_dev *dev = ctrl->pcie->port;
 return pcie_capability_write_dword(dev, reg, value);
}
