
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ns83820 {int CFG_cache; scalar_t__ base; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int autoneg; int speed; int duplex; int port; } ;


 scalar_t__ CFG ;
 int CFG_DUPSTS ;
 int CFG_SPDSTS0 ;
 int CFG_TBI_EN ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int PORT_FIBRE ;
 struct ns83820* PRIV (struct net_device*) ;
 int SPDSTS_POLARITY ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 scalar_t__ TANAR ;
 scalar_t__ TBICR ;
 int TBICR_MR_AN_ENABLE ;
 int readl (scalar_t__) ;

__attribute__((used)) static int ns83820_get_settings(struct net_device *ndev,
    struct ethtool_cmd *cmd)
{
 struct ns83820 *dev = PRIV(ndev);
 u32 cfg, tanar, tbicr;
 int have_optical = 0;
 int fullduplex = 0;
 cfg = readl(dev->base + CFG) ^ SPDSTS_POLARITY;
 tanar = readl(dev->base + TANAR);
 tbicr = readl(dev->base + TBICR);

 if (dev->CFG_cache & CFG_TBI_EN) {

  have_optical = 1;
  fullduplex = (cfg & CFG_DUPSTS) ? 1 : 0;

 } else {

  fullduplex = (cfg & CFG_DUPSTS) ? 1 : 0;
        }

 cmd->supported = SUPPORTED_Autoneg;


 if (dev->CFG_cache & CFG_TBI_EN) {
  cmd->supported |= SUPPORTED_1000baseT_Half |
     SUPPORTED_1000baseT_Full |
     SUPPORTED_FIBRE;
  cmd->port = PORT_FIBRE;
 }

 cmd->duplex = fullduplex ? DUPLEX_FULL : DUPLEX_HALF;
 switch (cfg / CFG_SPDSTS0 & 3) {
 case 2:
  cmd->speed = SPEED_1000;
  break;
 case 1:
  cmd->speed = SPEED_100;
  break;
 default:
  cmd->speed = SPEED_10;
  break;
 }
 cmd->autoneg = (tbicr & TBICR_MR_AN_ENABLE) ? 1: 0;
 return 0;
}
