
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int advertising; int supported; int duplex; void* speed; int autoneg; int phy_address; void* transceiver; int port; } ;
struct cas {int cas_flags; int lstate; int link_cntl; int lock; scalar_t__ regs; scalar_t__ hw_running; int phy_addr; int phy_type; } ;
typedef enum link_state { ____Placeholder_link_state } link_state ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_MII ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int CAS_BMCR_SPEED1000 ;
 int CAS_FLAG_1000MB_CAP ;
 int CAS_FLAG_SATURN ;
 scalar_t__ CAS_PHY_MII (int ) ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int MII_BMCR ;
 int PORT_FIBRE ;
 int PORT_MII ;
 scalar_t__ REG_PCS_MII_CTRL ;
 void* SPEED_10 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_MII ;
 int SUPPORTED_TP ;
 void* XCVR_EXTERNAL ;
 void* XCVR_INTERNAL ;
 int cas_mif_poll (struct cas*,int) ;
 int cas_phy_read (struct cas*,int ) ;
 int cas_read_mii_link_mode (struct cas*,int*,int*,int*) ;
 int cas_read_pcs_link_mode (struct cas*,int*,int*,int*) ;
 int link_up ;
 struct cas* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cas_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct cas *cp = netdev_priv(dev);
 u16 bmcr;
 int full_duplex, speed, pause;
 unsigned long flags;
 enum link_state linkstate = link_up;

 cmd->advertising = 0;
 cmd->supported = SUPPORTED_Autoneg;
 if (cp->cas_flags & CAS_FLAG_1000MB_CAP) {
  cmd->supported |= SUPPORTED_1000baseT_Full;
  cmd->advertising |= ADVERTISED_1000baseT_Full;
 }


 spin_lock_irqsave(&cp->lock, flags);
 bmcr = 0;
 linkstate = cp->lstate;
 if (CAS_PHY_MII(cp->phy_type)) {
  cmd->port = PORT_MII;
  cmd->transceiver = (cp->cas_flags & CAS_FLAG_SATURN) ?
   XCVR_INTERNAL : XCVR_EXTERNAL;
  cmd->phy_address = cp->phy_addr;
  cmd->advertising |= ADVERTISED_TP | ADVERTISED_MII |
   ADVERTISED_10baseT_Half |
   ADVERTISED_10baseT_Full |
   ADVERTISED_100baseT_Half |
   ADVERTISED_100baseT_Full;

  cmd->supported |=
   (SUPPORTED_10baseT_Half |
    SUPPORTED_10baseT_Full |
    SUPPORTED_100baseT_Half |
    SUPPORTED_100baseT_Full |
    SUPPORTED_TP | SUPPORTED_MII);

  if (cp->hw_running) {
   cas_mif_poll(cp, 0);
   bmcr = cas_phy_read(cp, MII_BMCR);
   cas_read_mii_link_mode(cp, &full_duplex,
            &speed, &pause);
   cas_mif_poll(cp, 1);
  }

 } else {
  cmd->port = PORT_FIBRE;
  cmd->transceiver = XCVR_INTERNAL;
  cmd->phy_address = 0;
  cmd->supported |= SUPPORTED_FIBRE;
  cmd->advertising |= ADVERTISED_FIBRE;

  if (cp->hw_running) {

   bmcr = readl(cp->regs + REG_PCS_MII_CTRL);
   cas_read_pcs_link_mode(cp, &full_duplex,
            &speed, &pause);
  }
 }
 spin_unlock_irqrestore(&cp->lock, flags);

 if (bmcr & BMCR_ANENABLE) {
  cmd->advertising |= ADVERTISED_Autoneg;
  cmd->autoneg = AUTONEG_ENABLE;
  cmd->speed = ((speed == 10) ?
         SPEED_10 :
         ((speed == 1000) ?
          SPEED_1000 : SPEED_100));
  cmd->duplex = full_duplex ? DUPLEX_FULL : DUPLEX_HALF;
 } else {
  cmd->autoneg = AUTONEG_DISABLE;
  cmd->speed =
   (bmcr & CAS_BMCR_SPEED1000) ?
   SPEED_1000 :
   ((bmcr & BMCR_SPEED100) ? SPEED_100:
    SPEED_10);
  cmd->duplex =
   (bmcr & BMCR_FULLDPLX) ?
   DUPLEX_FULL : DUPLEX_HALF;
 }
 if (linkstate != link_up) {
  if (cp->link_cntl & BMCR_ANENABLE) {
   cmd->speed = 0;
   cmd->duplex = 0xff;
  } else {
   cmd->speed = SPEED_10;
   if (cp->link_cntl & BMCR_SPEED100) {
    cmd->speed = SPEED_100;
   } else if (cp->link_cntl & CAS_BMCR_SPEED1000) {
    cmd->speed = SPEED_1000;
   }
   cmd->duplex = (cp->link_cntl & BMCR_FULLDPLX)?
    DUPLEX_FULL : DUPLEX_HALF;
  }
 }
 return 0;
}
