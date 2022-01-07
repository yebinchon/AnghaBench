
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ active_flowctrl; scalar_t__ active_speed; scalar_t__ active_duplex; int flowctrl; } ;
struct tg3 {int mac_mode; scalar_t__ old_link; int lock; TYPE_2__ link_config; TYPE_1__* mdio_bus; } ;
struct phy_device {scalar_t__ link; scalar_t__ speed; scalar_t__ duplex; scalar_t__ asym_pause; scalar_t__ pause; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct phy_device** phy_map; } ;


 scalar_t__ ASIC_REV_5785 ;
 scalar_t__ DUPLEX_HALF ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int MAC_MI_STAT ;
 int MAC_MI_STAT_10MBPS_MODE ;
 int MAC_MI_STAT_LNKSTAT_ATTN_ENAB ;
 int MAC_MODE ;
 int MAC_MODE_HALF_DUPLEX ;
 int MAC_MODE_PORT_MODE_GMII ;
 int MAC_MODE_PORT_MODE_MASK ;
 int MAC_MODE_PORT_MODE_MII ;
 int MAC_TX_LENGTHS ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 size_t TG3_PHY_MII_ADDR ;
 int TX_LENGTHS_IPG_CRS_SHIFT ;
 int TX_LENGTHS_IPG_SHIFT ;
 int TX_LENGTHS_SLOT_TIME_SHIFT ;
 int mii_advertise_flowctrl (int ) ;
 struct tg3* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 int tg3_link_report (struct tg3*) ;
 int tg3_setup_flow_control (struct tg3*,int,int) ;
 int tw32 (int ,int) ;
 int tw32_f (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void tg3_adjust_link(struct net_device *dev)
{
 u8 oldflowctrl, linkmesg = 0;
 u32 mac_mode, lcl_adv, rmt_adv;
 struct tg3 *tp = netdev_priv(dev);
 struct phy_device *phydev = tp->mdio_bus->phy_map[TG3_PHY_MII_ADDR];

 spin_lock_bh(&tp->lock);

 mac_mode = tp->mac_mode & ~(MAC_MODE_PORT_MODE_MASK |
        MAC_MODE_HALF_DUPLEX);

 oldflowctrl = tp->link_config.active_flowctrl;

 if (phydev->link) {
  lcl_adv = 0;
  rmt_adv = 0;

  if (phydev->speed == SPEED_100 || phydev->speed == SPEED_10)
   mac_mode |= MAC_MODE_PORT_MODE_MII;
  else if (phydev->speed == SPEED_1000 ||
    tg3_asic_rev(tp) != ASIC_REV_5785)
   mac_mode |= MAC_MODE_PORT_MODE_GMII;
  else
   mac_mode |= MAC_MODE_PORT_MODE_MII;

  if (phydev->duplex == DUPLEX_HALF)
   mac_mode |= MAC_MODE_HALF_DUPLEX;
  else {
   lcl_adv = mii_advertise_flowctrl(
      tp->link_config.flowctrl);

   if (phydev->pause)
    rmt_adv = LPA_PAUSE_CAP;
   if (phydev->asym_pause)
    rmt_adv |= LPA_PAUSE_ASYM;
  }

  tg3_setup_flow_control(tp, lcl_adv, rmt_adv);
 } else
  mac_mode |= MAC_MODE_PORT_MODE_GMII;

 if (mac_mode != tp->mac_mode) {
  tp->mac_mode = mac_mode;
  tw32_f(MAC_MODE, tp->mac_mode);
  udelay(40);
 }

 if (tg3_asic_rev(tp) == ASIC_REV_5785) {
  if (phydev->speed == SPEED_10)
   tw32(MAC_MI_STAT,
        MAC_MI_STAT_10MBPS_MODE |
        MAC_MI_STAT_LNKSTAT_ATTN_ENAB);
  else
   tw32(MAC_MI_STAT, MAC_MI_STAT_LNKSTAT_ATTN_ENAB);
 }

 if (phydev->speed == SPEED_1000 && phydev->duplex == DUPLEX_HALF)
  tw32(MAC_TX_LENGTHS,
       ((2 << TX_LENGTHS_IPG_CRS_SHIFT) |
        (6 << TX_LENGTHS_IPG_SHIFT) |
        (0xff << TX_LENGTHS_SLOT_TIME_SHIFT)));
 else
  tw32(MAC_TX_LENGTHS,
       ((2 << TX_LENGTHS_IPG_CRS_SHIFT) |
        (6 << TX_LENGTHS_IPG_SHIFT) |
        (32 << TX_LENGTHS_SLOT_TIME_SHIFT)));

 if (phydev->link != tp->old_link ||
     phydev->speed != tp->link_config.active_speed ||
     phydev->duplex != tp->link_config.active_duplex ||
     oldflowctrl != tp->link_config.active_flowctrl)
  linkmesg = 1;

 tp->old_link = phydev->link;
 tp->link_config.active_speed = phydev->speed;
 tp->link_config.active_duplex = phydev->duplex;

 spin_unlock_bh(&tp->lock);

 if (linkmesg)
  tg3_link_report(tp);
}
