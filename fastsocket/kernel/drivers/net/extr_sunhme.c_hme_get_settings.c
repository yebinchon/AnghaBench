
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct happy_meal {int sw_bmcr; int sw_lpa; int happy_lock; int tcvregs; } ;
struct ethtool_cmd {int supported; scalar_t__ speed; void* duplex; int autoneg; scalar_t__ phy_address; int transceiver; int port; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int LPA_100FULL ;
 int LPA_100HALF ;
 int LPA_10FULL ;
 int MII_BMCR ;
 int MII_LPA ;
 int PORT_TP ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_MII ;
 int SUPPORTED_TP ;
 int XCVR_INTERNAL ;
 void* happy_meal_tcvr_read (struct happy_meal*,int ,int ) ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hme_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct happy_meal *hp = netdev_priv(dev);

 cmd->supported =
  (SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full |
   SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full |
   SUPPORTED_Autoneg | SUPPORTED_TP | SUPPORTED_MII);


 cmd->port = PORT_TP;
 cmd->transceiver = XCVR_INTERNAL;
 cmd->phy_address = 0;


 spin_lock_irq(&hp->happy_lock);
 hp->sw_bmcr = happy_meal_tcvr_read(hp, hp->tcvregs, MII_BMCR);
 hp->sw_lpa = happy_meal_tcvr_read(hp, hp->tcvregs, MII_LPA);
 spin_unlock_irq(&hp->happy_lock);

 if (hp->sw_bmcr & BMCR_ANENABLE) {
  cmd->autoneg = AUTONEG_ENABLE;
  cmd->speed =
   (hp->sw_lpa & (LPA_100HALF | LPA_100FULL)) ?
   SPEED_100 : SPEED_10;
  if (cmd->speed == SPEED_100)
   cmd->duplex =
    (hp->sw_lpa & (LPA_100FULL)) ?
    DUPLEX_FULL : DUPLEX_HALF;
  else
   cmd->duplex =
    (hp->sw_lpa & (LPA_10FULL)) ?
    DUPLEX_FULL : DUPLEX_HALF;
 } else {
  cmd->autoneg = AUTONEG_DISABLE;
  cmd->speed =
   (hp->sw_bmcr & BMCR_SPEED100) ?
   SPEED_100 : SPEED_10;
  cmd->duplex =
   (hp->sw_bmcr & BMCR_FULLDPLX) ?
   DUPLEX_FULL : DUPLEX_HALF;
 }
 return 0;
}
