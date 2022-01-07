
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef void* u16 ;
struct bcma_drv_pci {TYPE_2__* core; } ;
struct TYPE_3__ {int rev; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE ;
 int BCMA_CORE_PCI_MDIOCTL_DIVISOR_VAL ;
 int BCMA_CORE_PCI_MDIOCTL_PREAM_EN ;
 int BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF ;
 int BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF_OLD ;
 int BCMA_CORE_PCI_MDIODATA_DEV_ADDR ;
 int BCMA_CORE_PCI_MDIODATA_READ ;
 int BCMA_CORE_PCI_MDIODATA_REGADDR_SHF ;
 int BCMA_CORE_PCI_MDIODATA_REGADDR_SHF_OLD ;
 int BCMA_CORE_PCI_MDIODATA_START ;
 int BCMA_CORE_PCI_MDIODATA_TA ;
 int BCMA_CORE_PCI_MDIO_CONTROL ;
 int BCMA_CORE_PCI_MDIO_DATA ;
 int bcma_pcie_mdio_set_phy (struct bcma_drv_pci*,int) ;
 void* pcicore_read32 (struct bcma_drv_pci*,int ) ;
 int pcicore_write32 (struct bcma_drv_pci*,int ,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static u16 bcma_pcie_mdio_read(struct bcma_drv_pci *pc, u8 device, u8 address)
{
 int max_retries = 10;
 u16 ret = 0;
 u32 v;
 int i;


 v = BCMA_CORE_PCI_MDIOCTL_PREAM_EN;
 v |= BCMA_CORE_PCI_MDIOCTL_DIVISOR_VAL;
 pcicore_write32(pc, BCMA_CORE_PCI_MDIO_CONTROL, v);

 if (pc->core->id.rev >= 10) {
  max_retries = 200;
  bcma_pcie_mdio_set_phy(pc, device);
  v = (BCMA_CORE_PCI_MDIODATA_DEV_ADDR <<
       BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF);
  v |= (address << BCMA_CORE_PCI_MDIODATA_REGADDR_SHF);
 } else {
  v = (device << BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF_OLD);
  v |= (address << BCMA_CORE_PCI_MDIODATA_REGADDR_SHF_OLD);
 }

 v = BCMA_CORE_PCI_MDIODATA_START;
 v |= BCMA_CORE_PCI_MDIODATA_READ;
 v |= BCMA_CORE_PCI_MDIODATA_TA;

 pcicore_write32(pc, BCMA_CORE_PCI_MDIO_DATA, v);

 udelay(10);
 for (i = 0; i < max_retries; i++) {
  v = pcicore_read32(pc, BCMA_CORE_PCI_MDIO_CONTROL);
  if (v & BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE) {
   udelay(10);
   ret = pcicore_read32(pc, BCMA_CORE_PCI_MDIO_DATA);
   break;
  }
  usleep_range(1000, 2000);
 }
 pcicore_write32(pc, BCMA_CORE_PCI_MDIO_CONTROL, 0);
 return ret;
}
