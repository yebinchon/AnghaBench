
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bcma_drv_pci {int dummy; } ;


 int BCMA_CORE_PCI_MDIODATA_DEV_PLL ;
 int BCMA_CORE_PCI_MDIODATA_DEV_RX ;
 int BCMA_CORE_PCI_PLL_CTRL_FREQDET_EN ;
 int BCMA_CORE_PCI_SERDES_PLL_CTRL ;
 int BCMA_CORE_PCI_SERDES_RX_CTRL ;
 int bcma_pcicore_polarity_workaround (struct bcma_drv_pci*) ;
 int bcma_pcie_mdio_read (struct bcma_drv_pci*,int ,int ) ;
 int bcma_pcie_mdio_write (struct bcma_drv_pci*,int ,int ,int) ;

__attribute__((used)) static void bcma_pcicore_serdes_workaround(struct bcma_drv_pci *pc)
{
 u16 tmp;

 bcma_pcie_mdio_write(pc, BCMA_CORE_PCI_MDIODATA_DEV_RX,
                      BCMA_CORE_PCI_SERDES_RX_CTRL,
        bcma_pcicore_polarity_workaround(pc));
 tmp = bcma_pcie_mdio_read(pc, BCMA_CORE_PCI_MDIODATA_DEV_PLL,
                           BCMA_CORE_PCI_SERDES_PLL_CTRL);
 if (tmp & BCMA_CORE_PCI_PLL_CTRL_FREQDET_EN)
  bcma_pcie_mdio_write(pc, BCMA_CORE_PCI_MDIODATA_DEV_PLL,
                       BCMA_CORE_PCI_SERDES_PLL_CTRL,
                       tmp & ~BCMA_CORE_PCI_PLL_CTRL_FREQDET_EN);
}
