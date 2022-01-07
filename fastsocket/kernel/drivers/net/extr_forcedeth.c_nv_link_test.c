
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int phyaddr; } ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int MII_READ ;
 int mii_rw (struct net_device*,int ,int ,int ) ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nv_link_test(struct net_device *dev)
{
 struct fe_priv *np = netdev_priv(dev);
 int mii_status;

 mii_rw(dev, np->phyaddr, MII_BMSR, MII_READ);
 mii_status = mii_rw(dev, np->phyaddr, MII_BMSR, MII_READ);


 if (!(mii_status & BMSR_LSTATUS))
  return 0;
 else
  return 1;
}
