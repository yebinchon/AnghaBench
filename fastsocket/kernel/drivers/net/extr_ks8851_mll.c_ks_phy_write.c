
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_net {int lock; } ;


 int ks_phy_reg (int) ;
 int ks_wrreg16 (struct ks_net*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ks_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ks_phy_write(struct net_device *netdev,
        int phy, int reg, int value)
{
 struct ks_net *ks = netdev_priv(netdev);
 int ksreg;

 ksreg = ks_phy_reg(reg);
 if (ksreg) {
  mutex_lock(&ks->lock);
  ks_wrreg16(ks, ksreg, value);
  mutex_unlock(&ks->lock);
 }
}
