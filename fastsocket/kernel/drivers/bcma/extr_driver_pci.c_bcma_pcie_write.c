
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_pci {int dummy; } ;


 int BCMA_CORE_PCI_PCIEIND_ADDR ;
 int BCMA_CORE_PCI_PCIEIND_DATA ;
 int pcicore_read32 (struct bcma_drv_pci*,int ) ;
 int pcicore_write32 (struct bcma_drv_pci*,int ,int ) ;

__attribute__((used)) static void bcma_pcie_write(struct bcma_drv_pci *pc, u32 address, u32 data)
{
 pcicore_write32(pc, BCMA_CORE_PCI_PCIEIND_ADDR, address);
 pcicore_read32(pc, BCMA_CORE_PCI_PCIEIND_ADDR);
 pcicore_write32(pc, BCMA_CORE_PCI_PCIEIND_DATA, data);
}
