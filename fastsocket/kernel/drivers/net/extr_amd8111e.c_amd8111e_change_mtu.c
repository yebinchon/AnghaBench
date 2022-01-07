
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct amd8111e_priv {int lock; scalar_t__ mmio; } ;


 int AMD8111E_MAX_MTU ;
 int AMD8111E_MIN_MTU ;
 scalar_t__ CMD0 ;
 int EINVAL ;
 int RUN ;
 int amd8111e_restart (struct net_device*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int amd8111e_change_mtu(struct net_device *dev, int new_mtu)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 int err;

 if ((new_mtu < AMD8111E_MIN_MTU) || (new_mtu > AMD8111E_MAX_MTU))
  return -EINVAL;

 if (!netif_running(dev)) {


  dev->mtu = new_mtu;
  return 0;
 }

 spin_lock_irq(&lp->lock);


 writel(RUN, lp->mmio + CMD0);

 dev->mtu = new_mtu;

 err = amd8111e_restart(dev);
 spin_unlock_irq(&lp->lock);
 if(!err)
  netif_start_queue(dev);
 return err;
}
