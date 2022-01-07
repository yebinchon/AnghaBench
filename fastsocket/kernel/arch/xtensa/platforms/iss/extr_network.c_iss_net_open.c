
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {unsigned long data; int function; } ;
struct TYPE_4__ {int (* open ) (struct iss_net_private*) ;} ;
struct iss_net_private {int lock; scalar_t__ timer_val; TYPE_2__ timer; int opened_list; int * mac; int have_mac; TYPE_1__ tp; } ;


 scalar_t__ ISS_NET_TIMER_VALUE ;
 int dev_ip_addr (struct net_device*,char*,int *) ;
 int init_timer (TYPE_2__*) ;
 int iss_net_rx (struct net_device*) ;
 int iss_net_timer ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int mod_timer (TYPE_2__*,scalar_t__) ;
 struct iss_net_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int opened ;
 int opened_lock ;
 int set_ether_mac (struct net_device*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct iss_net_private*) ;

__attribute__((used)) static int iss_net_open(struct net_device *dev)
{
 struct iss_net_private *lp = netdev_priv(dev);
 char addr[sizeof "255.255.255.255\0"];
 int err;

 spin_lock(&lp->lock);

 if ((err = lp->tp.open(lp)) < 0)
  goto out;

 if (!lp->have_mac) {
  dev_ip_addr(dev, addr, &lp->mac[2]);
  set_ether_mac(dev, lp->mac);
 }

 netif_start_queue(dev);





 while ((err = iss_net_rx(dev)) > 0)
  ;

 spin_lock(&opened_lock);
 list_add(&lp->opened_list, &opened);
 spin_unlock(&opened_lock);

 init_timer(&lp->timer);
 lp->timer_val = ISS_NET_TIMER_VALUE;
 lp->timer.data = (unsigned long) lp;
 lp->timer.function = iss_net_timer;
 mod_timer(&lp->timer, jiffies + lp->timer_val);

out:
 spin_unlock(&lp->lock);
 return err;
}
