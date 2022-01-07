
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int* phys; } ;
struct net_device {int dummy; } ;


 int MII_BMSR ;
 int mdelay (int) ;
 int mdio_read (struct net_device*,int,int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mdio_wait_link(struct net_device *dev, int wait)
{
 int bmsr;
 int phy_id;
 struct netdev_private *np;

 np = netdev_priv(dev);
 phy_id = np->phys[0];

 do {
  bmsr = mdio_read(dev, phy_id, MII_BMSR);
  if (bmsr & 0x0004)
   return 0;
  mdelay(1);
 } while (--wait > 0);
 return -1;
}
