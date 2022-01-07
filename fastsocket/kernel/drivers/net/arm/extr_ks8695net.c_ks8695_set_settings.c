
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ks8695_priv {int dtype; scalar_t__ phyiface_regs; } ;
struct ethtool_cmd {scalar_t__ speed; scalar_t__ duplex; scalar_t__ port; scalar_t__ transceiver; scalar_t__ autoneg; int advertising; } ;


 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 int EOPNOTSUPP ;



 scalar_t__ KS8695_WMC ;
 scalar_t__ PORT_MII ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int WMC_WANA100F ;
 int WMC_WANA100H ;
 int WMC_WANA10F ;
 int WMC_WANA10H ;
 int WMC_WAND ;
 int WMC_WANF100 ;
 int WMC_WANFF ;
 int WMC_WANR ;
 scalar_t__ XCVR_INTERNAL ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
ks8695_set_settings(struct net_device *ndev, struct ethtool_cmd *cmd)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);
 u32 ctrl;

 if ((cmd->speed != SPEED_10) && (cmd->speed != SPEED_100))
  return -EINVAL;
 if ((cmd->duplex != DUPLEX_HALF) && (cmd->duplex != DUPLEX_FULL))
  return -EINVAL;
 if (cmd->port != PORT_MII)
  return -EINVAL;
 if (cmd->transceiver != XCVR_INTERNAL)
  return -EINVAL;
 if ((cmd->autoneg != AUTONEG_DISABLE) &&
     (cmd->autoneg != AUTONEG_ENABLE))
  return -EINVAL;

 if (cmd->autoneg == AUTONEG_ENABLE) {
  if ((cmd->advertising & (ADVERTISED_10baseT_Half |
    ADVERTISED_10baseT_Full |
    ADVERTISED_100baseT_Half |
    ADVERTISED_100baseT_Full)) == 0)
   return -EINVAL;

  switch (ksp->dtype) {
  case 130:

   return -EINVAL;
  case 128:
   ctrl = readl(ksp->phyiface_regs + KS8695_WMC);

   ctrl &= ~(WMC_WAND | WMC_WANA100F | WMC_WANA100H |
      WMC_WANA10F | WMC_WANA10H);
   if (cmd->advertising & ADVERTISED_100baseT_Full)
    ctrl |= WMC_WANA100F;
   if (cmd->advertising & ADVERTISED_100baseT_Half)
    ctrl |= WMC_WANA100H;
   if (cmd->advertising & ADVERTISED_10baseT_Full)
    ctrl |= WMC_WANA10F;
   if (cmd->advertising & ADVERTISED_10baseT_Half)
    ctrl |= WMC_WANA10H;


   ctrl |= WMC_WANR;
   writel(ctrl, ksp->phyiface_regs + KS8695_WMC);
   break;
  case 129:
   return -EOPNOTSUPP;
  }

 } else {
  switch (ksp->dtype) {
  case 130:
   return -EOPNOTSUPP;
  case 128:
   ctrl = readl(ksp->phyiface_regs + KS8695_WMC);


   ctrl |= WMC_WAND;
   ctrl &= ~(WMC_WANF100 | WMC_WANFF);

   if (cmd->speed == SPEED_100)
    ctrl |= WMC_WANF100;
   if (cmd->duplex == DUPLEX_FULL)
    ctrl |= WMC_WANFF;

   writel(ctrl, ksp->phyiface_regs + KS8695_WMC);
   break;
  case 129:
   return -EOPNOTSUPP;
  }
 }

 return 0;
}
