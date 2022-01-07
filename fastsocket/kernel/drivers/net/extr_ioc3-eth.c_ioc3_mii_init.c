
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int phy_id; } ;
struct ioc3_private {TYPE_1__ mii; } ;


 int ENODEV ;
 int MII_PHYSID1 ;
 int ioc3_mdio_read (struct net_device*,int,int ) ;
 struct net_device* priv_netdev (struct ioc3_private*) ;

__attribute__((used)) static int ioc3_mii_init(struct ioc3_private *ip)
{
 struct net_device *dev = priv_netdev(ip);
 int i, found = 0, res = 0;
 int ioc3_phy_workaround = 1;
 u16 word;

 for (i = 0; i < 32; i++) {
  word = ioc3_mdio_read(dev, i, MII_PHYSID1);

  if (word != 0xffff && word != 0x0000) {
   found = 1;
   break;
  }
 }

 if (!found) {
  if (ioc3_phy_workaround)
   i = 31;
  else {
   ip->mii.phy_id = -1;
   res = -ENODEV;
   goto out;
  }
 }

 ip->mii.phy_id = i;

out:
 return res;
}
