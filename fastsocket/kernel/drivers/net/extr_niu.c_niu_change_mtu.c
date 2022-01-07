
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long data; int function; scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ loopback_mode; } ;
struct niu {TYPE_2__ timer; TYPE_1__ link_config; int lock; } ;
struct net_device {int mtu; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;
 scalar_t__ HZ ;
 scalar_t__ LOOPBACK_DISABLED ;
 int NIU_MAX_MTU ;
 int add_timer (TYPE_2__*) ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 struct niu* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int niu_alloc_channels (struct niu*) ;
 int niu_enable_interrupts (struct niu*,int) ;
 int niu_enable_napi (struct niu*) ;
 int niu_free_channels (struct niu*) ;
 int niu_full_shutdown (struct niu*,struct net_device*) ;
 int niu_init_hw (struct niu*) ;
 int niu_stop_hw (struct niu*) ;
 int niu_timer ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int niu_change_mtu(struct net_device *dev, int new_mtu)
{
 struct niu *np = netdev_priv(dev);
 int err, orig_jumbo, new_jumbo;

 if (new_mtu < 68 || new_mtu > NIU_MAX_MTU)
  return -EINVAL;

 orig_jumbo = (dev->mtu > ETH_DATA_LEN);
 new_jumbo = (new_mtu > ETH_DATA_LEN);

 dev->mtu = new_mtu;

 if (!netif_running(dev) ||
     (orig_jumbo == new_jumbo))
  return 0;

 niu_full_shutdown(np, dev);

 niu_free_channels(np);

 niu_enable_napi(np);

 err = niu_alloc_channels(np);
 if (err)
  return err;

 spin_lock_irq(&np->lock);

 err = niu_init_hw(np);
 if (!err) {
  init_timer(&np->timer);
  np->timer.expires = jiffies + HZ;
  np->timer.data = (unsigned long) np;
  np->timer.function = niu_timer;

  err = niu_enable_interrupts(np, 1);
  if (err)
   niu_stop_hw(np);
 }

 spin_unlock_irq(&np->lock);

 if (!err) {
  netif_tx_start_all_queues(dev);
  if (np->link_config.loopback_mode != LOOPBACK_DISABLED)
   netif_carrier_on(dev);

  add_timer(&np->timer);
 }

 return err;
}
