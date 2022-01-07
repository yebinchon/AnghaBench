
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int phy_id; scalar_t__ force_media; } ;
struct nic {int phy; scalar_t__ mac; int flags; int* eeprom; TYPE_1__ mii; int mdio_ctrl; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_ISOLATE ;
 int BMCR_RESET ;
 int EAGAIN ;
 int KERN_DEBUG ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_BMSR ;
 int MII_NCONFIG ;
 int MII_NSC_CONG ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int MII_TPISTATUS ;
 int NCONFIG_AUTO_SWITCH ;
 int NCS_PHY_MODEL_MASK ;
 int NSC_CONG_ENABLE ;
 int NSC_CONG_TXREADY ;
 scalar_t__ e100_phy_check_without_mii (struct nic*) ;
 size_t eeprom_cnfg_mdix ;
 int eeprom_mdix_enabled ;
 int hw ;
 int ich ;
 scalar_t__ mac_82550_D102 ;
 int mdio_ctrl_phy_82552_v ;
 int mdio_read (struct net_device*,int,int ) ;
 int mdio_write (struct net_device*,int,int ,int) ;
 int netif_err (struct nic*,int ,struct net_device*,char*) ;
 int netif_printk (struct nic*,int ,int ,struct net_device*,char*,int) ;
 int phy_82552_v ;
 int phy_nsc_tx ;

__attribute__((used)) static int e100_phy_init(struct nic *nic)
{
 struct net_device *netdev = nic->netdev;
 u32 addr;
 u16 bmcr, stat, id_lo, id_hi, cong;


 for (addr = 0; addr < 32; addr++) {
  nic->mii.phy_id = (addr == 0) ? 1 : (addr == 1) ? 0 : addr;
  bmcr = mdio_read(netdev, nic->mii.phy_id, MII_BMCR);
  stat = mdio_read(netdev, nic->mii.phy_id, MII_BMSR);
  stat = mdio_read(netdev, nic->mii.phy_id, MII_BMSR);
  if (!((bmcr == 0xFFFF) || ((stat == 0) && (bmcr == 0))))
   break;
 }
 if (addr == 32) {




  if (e100_phy_check_without_mii(nic))
   return 0;
  else {

   netif_err(nic, hw, nic->netdev,
      "Failed to locate any known PHY, aborting\n");
   return -EAGAIN;
  }
 } else
  netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
        "phy_addr = %d\n", nic->mii.phy_id);


 id_lo = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID1);
 id_hi = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID2);
 nic->phy = (u32)id_hi << 16 | (u32)id_lo;
 netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
       "phy ID = 0x%08X\n", nic->phy);


 for (addr = 0; addr < 32; addr++) {
  if (addr != nic->mii.phy_id) {
   mdio_write(netdev, addr, MII_BMCR, BMCR_ISOLATE);
  } else if (nic->phy != phy_82552_v) {
   bmcr = mdio_read(netdev, addr, MII_BMCR);
   mdio_write(netdev, addr, MII_BMCR,
    bmcr & ~BMCR_ISOLATE);
  }
 }





 if (nic->phy == phy_82552_v)
  mdio_write(netdev, nic->mii.phy_id, MII_BMCR,
   bmcr & ~BMCR_ISOLATE);



 if ((nic->phy & 0xFFF0FFFF) == phy_nsc_tx) {

  cong = mdio_read(netdev, nic->mii.phy_id, MII_NSC_CONG);
  cong |= NSC_CONG_TXREADY;
  cong &= ~NSC_CONG_ENABLE;
  mdio_write(netdev, nic->mii.phy_id, MII_NSC_CONG, cong);
 }

 if (nic->phy == phy_82552_v) {
  u16 advert = mdio_read(netdev, nic->mii.phy_id, MII_ADVERTISE);


  nic->mdio_ctrl = mdio_ctrl_phy_82552_v;


  advert |= ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM;
  mdio_write(netdev, nic->mii.phy_id, MII_ADVERTISE, advert);


  bmcr = mdio_read(netdev, nic->mii.phy_id, MII_BMCR);
  bmcr |= BMCR_RESET;
  mdio_write(netdev, nic->mii.phy_id, MII_BMCR, bmcr);
 } else if ((nic->mac >= mac_82550_D102) || ((nic->flags & ich) &&
    (mdio_read(netdev, nic->mii.phy_id, MII_TPISTATUS) & 0x8000) &&
  !(nic->eeprom[eeprom_cnfg_mdix] & eeprom_mdix_enabled))) {

  mdio_write(netdev, nic->mii.phy_id, MII_NCONFIG,
    nic->mii.force_media ? 0 : NCONFIG_AUTO_SWITCH);
 }

 return 0;
}
