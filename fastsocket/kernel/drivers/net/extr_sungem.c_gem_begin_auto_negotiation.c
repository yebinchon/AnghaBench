
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int advertising; int speed; int duplex; int autoneg; TYPE_2__* def; } ;
struct gem {scalar_t__ phy_type; int want_autoneg; int link_timer; scalar_t__ timer_ticks; int lstate; TYPE_3__ phy_mii; scalar_t__ asleep; } ;
struct ethtool_cmd {scalar_t__ autoneg; int advertising; int speed; int duplex; } ;
struct TYPE_6__ {int features; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* setup_forced ) (TYPE_3__*,int,int) ;int (* setup_aneg ) (TYPE_3__*,int) ;} ;


 int ADVERTISE_MASK ;
 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int HZ ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_Autoneg ;
 scalar_t__ found_mii_phy (struct gem*) ;
 scalar_t__ jiffies ;
 int link_aneg ;
 int link_force_ok ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ phy_mii_mdio0 ;
 scalar_t__ phy_mii_mdio1 ;
 int stub1 (TYPE_3__*,int) ;
 int stub2 (TYPE_3__*,int,int) ;

__attribute__((used)) static void gem_begin_auto_negotiation(struct gem *gp, struct ethtool_cmd *ep)
{
 u32 advertise, features;
 int autoneg;
 int speed;
 int duplex;

 if (gp->phy_type != phy_mii_mdio0 &&
          gp->phy_type != phy_mii_mdio1)
           goto non_mii;


 if (found_mii_phy(gp))
  features = gp->phy_mii.def->features;
 else
  features = 0;

 advertise = features & ADVERTISE_MASK;
 if (gp->phy_mii.advertising != 0)
  advertise &= gp->phy_mii.advertising;

 autoneg = gp->want_autoneg;
 speed = gp->phy_mii.speed;
 duplex = gp->phy_mii.duplex;


 if (!ep)
  goto start_aneg;
 if (ep->autoneg == AUTONEG_ENABLE) {
  advertise = ep->advertising;
  autoneg = 1;
 } else {
  autoneg = 0;
  speed = ep->speed;
  duplex = ep->duplex;
 }

start_aneg:

 if ((features & SUPPORTED_Autoneg) == 0)
  autoneg = 0;
 if (speed == SPEED_1000 &&
     !(features & (SUPPORTED_1000baseT_Half | SUPPORTED_1000baseT_Full)))
  speed = SPEED_100;
 if (speed == SPEED_100 &&
     !(features & (SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full)))
  speed = SPEED_10;
 if (duplex == DUPLEX_FULL &&
     !(features & (SUPPORTED_1000baseT_Full |
         SUPPORTED_100baseT_Full |
         SUPPORTED_10baseT_Full)))
      duplex = DUPLEX_HALF;
 if (speed == 0)
  speed = SPEED_10;




 if (gp->asleep) {
  gp->phy_mii.autoneg = gp->want_autoneg = autoneg;
  gp->phy_mii.speed = speed;
  gp->phy_mii.duplex = duplex;
  return;
 }


 gp->want_autoneg = autoneg;
 if (autoneg) {
  if (found_mii_phy(gp))
   gp->phy_mii.def->ops->setup_aneg(&gp->phy_mii, advertise);
  gp->lstate = link_aneg;
 } else {
  if (found_mii_phy(gp))
   gp->phy_mii.def->ops->setup_forced(&gp->phy_mii, speed, duplex);
  gp->lstate = link_force_ok;
 }

non_mii:
 gp->timer_ticks = 0;
 mod_timer(&gp->link_timer, jiffies + ((12 * HZ) / 10));
}
