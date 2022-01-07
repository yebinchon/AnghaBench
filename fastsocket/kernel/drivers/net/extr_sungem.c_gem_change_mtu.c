
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct gem {scalar_t__ lstate; int pm_mutex; int lock; int tx_lock; scalar_t__ running; } ;


 int EINVAL ;
 int GEM_MAX_MTU ;
 int GEM_MIN_MTU ;
 int gem_reinit_chip (struct gem*) ;
 int gem_set_link_modes (struct gem*) ;
 scalar_t__ link_up ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gem* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int gem_change_mtu(struct net_device *dev, int new_mtu)
{
 struct gem *gp = netdev_priv(dev);

 if (new_mtu < GEM_MIN_MTU || new_mtu > GEM_MAX_MTU)
  return -EINVAL;

 if (!netif_running(dev) || !netif_device_present(dev)) {



  dev->mtu = new_mtu;
  return 0;
 }

 mutex_lock(&gp->pm_mutex);
 spin_lock_irq(&gp->lock);
 spin_lock(&gp->tx_lock);
 dev->mtu = new_mtu;
 if (gp->running) {
  gem_reinit_chip(gp);
  if (gp->lstate == link_up)
   gem_set_link_modes(gp);
 }
 spin_unlock(&gp->tx_lock);
 spin_unlock_irq(&gp->lock);
 mutex_unlock(&gp->pm_mutex);

 return 0;
}
