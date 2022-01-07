
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int lock; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;


 struct uml_net_private* netdev_priv (struct net_device*) ;
 int set_ether_mac (struct net_device*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int uml_net_set_mac(struct net_device *dev, void *addr)
{
 struct uml_net_private *lp = netdev_priv(dev);
 struct sockaddr *hwaddr = addr;

 spin_lock_irq(&lp->lock);
 set_ether_mac(dev, hwaddr->sa_data);
 spin_unlock_irq(&lp->lock);

 return 0;
}
