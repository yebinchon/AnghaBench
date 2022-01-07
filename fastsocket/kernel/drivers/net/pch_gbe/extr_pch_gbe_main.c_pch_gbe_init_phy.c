
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int phy_id; int phy_id_mask; int reg_num_mask; int (* mdio_read ) (struct net_device*,int,int ) ;int supports_gmii; int (* mdio_write ) (struct net_device*,int,int ,int) ;struct net_device* dev; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {TYPE_1__ phy; } ;
struct pch_gbe_adapter {TYPE_3__ mii; struct net_device* netdev; TYPE_2__ hw; } ;
struct net_device {int dummy; } ;


 int BMCR_ISOLATE ;
 int EAGAIN ;
 int MII_BMCR ;
 int MII_BMSR ;
 int PCH_GBE_PHY_REGS_LEN ;
 int mii_check_gmii_support (TYPE_3__*) ;
 int pch_gbe_mdio_read (struct net_device*,int,int ) ;
 int pch_gbe_mdio_write (struct net_device*,int,int ,int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int pch_gbe_init_phy(struct pch_gbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 u32 addr;
 u16 bmcr, stat;


 for (addr = 0; addr < PCH_GBE_PHY_REGS_LEN; addr++) {
  adapter->mii.phy_id = (addr == 0) ? 1 : (addr == 1) ? 0 : addr;
  bmcr = pch_gbe_mdio_read(netdev, adapter->mii.phy_id, MII_BMCR);
  stat = pch_gbe_mdio_read(netdev, adapter->mii.phy_id, MII_BMSR);
  stat = pch_gbe_mdio_read(netdev, adapter->mii.phy_id, MII_BMSR);
  if (!((bmcr == 0xFFFF) || ((stat == 0) && (bmcr == 0))))
   break;
 }
 adapter->hw.phy.addr = adapter->mii.phy_id;
 pr_debug("phy_addr = %d\n", adapter->mii.phy_id);
 if (addr == 32)
  return -EAGAIN;

 for (addr = 0; addr < PCH_GBE_PHY_REGS_LEN; addr++) {
  if (addr != adapter->mii.phy_id) {
   pch_gbe_mdio_write(netdev, addr, MII_BMCR,
        BMCR_ISOLATE);
  } else {
   bmcr = pch_gbe_mdio_read(netdev, addr, MII_BMCR);
   pch_gbe_mdio_write(netdev, addr, MII_BMCR,
        bmcr & ~BMCR_ISOLATE);
  }
 }


 adapter->mii.phy_id_mask = 0x1F;
 adapter->mii.reg_num_mask = 0x1F;
 adapter->mii.dev = adapter->netdev;
 adapter->mii.mdio_read = pch_gbe_mdio_read;
 adapter->mii.mdio_write = pch_gbe_mdio_write;
 adapter->mii.supports_gmii = mii_check_gmii_support(&adapter->mii);
 return 0;
}
