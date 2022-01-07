
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct b44 {int dummy; } ;


 int __b44_readphy (struct b44*,int,int,int*) ;
 struct b44* netdev_priv (struct net_device*) ;

__attribute__((used)) static int b44_mii_read(struct net_device *dev, int phy_id, int location)
{
 u32 val;
 struct b44 *bp = netdev_priv(dev);
 int rc = __b44_readphy(bp, phy_id, location, &val);
 if (rc)
  return 0xffffffff;
 return val;
}
