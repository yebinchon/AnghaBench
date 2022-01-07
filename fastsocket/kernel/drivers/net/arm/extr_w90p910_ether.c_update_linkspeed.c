
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; } ;
struct w90p910_ether {int linkflag; TYPE_1__ mii; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct net_device {int name; } ;


 unsigned int BMCR_ANENABLE ;
 unsigned int BMCR_FULLDPLX ;
 unsigned int BMCR_SPEED100 ;
 unsigned int BMSR_ANEGCOMPLETE ;
 unsigned int DUPLEX_FULL ;
 unsigned int DUPLEX_HALF ;
 unsigned int LPA_100FULL ;
 unsigned int LPA_100HALF ;
 unsigned int LPA_10FULL ;
 int MII_BMCR ;
 int MII_BMSR ;
 int MII_LPA ;
 unsigned int SPEED_10 ;
 unsigned int SPEED_100 ;
 int dev_info (int *,char*,int ,unsigned int,char*) ;
 int dev_warn (int *,char*,int ) ;
 int mii_link_ok (TYPE_1__*) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int update_linkspeed_register (struct net_device*,unsigned int,unsigned int) ;
 unsigned int w90p910_mdio_read (struct net_device*,int ,int ) ;

__attribute__((used)) static void update_linkspeed(struct net_device *dev)
{
 struct w90p910_ether *ether = netdev_priv(dev);
 struct platform_device *pdev;
 unsigned int bmsr, bmcr, lpa, speed, duplex;

 pdev = ether->pdev;

 if (!mii_link_ok(&ether->mii)) {
  ether->linkflag = 0x0;
  netif_carrier_off(dev);
  dev_warn(&pdev->dev, "%s: Link down.\n", dev->name);
  return;
 }

 if (ether->linkflag == 1)
  return;

 bmsr = w90p910_mdio_read(dev, ether->mii.phy_id, MII_BMSR);
 bmcr = w90p910_mdio_read(dev, ether->mii.phy_id, MII_BMCR);

 if (bmcr & BMCR_ANENABLE) {
  if (!(bmsr & BMSR_ANEGCOMPLETE))
   return;

  lpa = w90p910_mdio_read(dev, ether->mii.phy_id, MII_LPA);

  if ((lpa & LPA_100FULL) || (lpa & LPA_100HALF))
   speed = SPEED_100;
  else
   speed = SPEED_10;

  if ((lpa & LPA_100FULL) || (lpa & LPA_10FULL))
   duplex = DUPLEX_FULL;
  else
   duplex = DUPLEX_HALF;

 } else {
  speed = (bmcr & BMCR_SPEED100) ? SPEED_100 : SPEED_10;
  duplex = (bmcr & BMCR_FULLDPLX) ? DUPLEX_FULL : DUPLEX_HALF;
 }

 update_linkspeed_register(dev, speed, duplex);

 dev_info(&pdev->dev, "%s: Link now %i-%s\n", dev->name, speed,
   (duplex == DUPLEX_FULL) ? "FullDuplex" : "HalfDuplex");
 ether->linkflag = 0x01;

 netif_carrier_on(dev);
}
