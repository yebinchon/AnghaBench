
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks8851_net {int lock; } ;


 int ks8851_phy_reg (int) ;
 int ks8851_rdreg16 (struct ks8851_net*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks8851_phy_read(struct net_device *dev, int phy_addr, int reg)
{
 struct ks8851_net *ks = netdev_priv(dev);
 int ksreg;
 int result;

 ksreg = ks8851_phy_reg(reg);
 if (!ksreg)
  return 0x0;

 mutex_lock(&ks->lock);
 result = ks8851_rdreg16(ks, ksreg);
 mutex_unlock(&ks->lock);

 return result;
}
