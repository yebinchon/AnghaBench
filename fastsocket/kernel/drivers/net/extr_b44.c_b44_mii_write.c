
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct b44 {int dummy; } ;


 int __b44_writephy (struct b44*,int,int,int) ;
 struct b44* netdev_priv (struct net_device*) ;

__attribute__((used)) static void b44_mii_write(struct net_device *dev, int phy_id, int location,
    int val)
{
 struct b44 *bp = netdev_priv(dev);
 __b44_writephy(bp, phy_id, location, val);
}
