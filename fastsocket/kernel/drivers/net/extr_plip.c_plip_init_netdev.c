
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int lock; int timer; int deferred; int immediate; int nibble; int trigger; scalar_t__ port_owner; } ;
struct net_device {int tx_queue_len; int flags; int irq; int * header_ops; int * netdev_ops; int dev_addr; } ;


 int ETH_ALEN ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int PLIP_NIBBLE_WAIT ;
 int PLIP_TRIGGER_WAIT ;
 int memset (int ,int,int ) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int plip_bh ;
 int plip_header_ops ;
 int plip_kick_bh ;
 int plip_netdev_ops ;
 int plip_timer_bh ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void
plip_init_netdev(struct net_device *dev)
{
 struct net_local *nl = netdev_priv(dev);


 dev->tx_queue_len = 10;
 dev->flags = IFF_POINTOPOINT|IFF_NOARP;
 memset(dev->dev_addr, 0xfc, ETH_ALEN);

 dev->netdev_ops = &plip_netdev_ops;
 dev->header_ops = &plip_header_ops;


 nl->port_owner = 0;


 nl->trigger = PLIP_TRIGGER_WAIT;
 nl->nibble = PLIP_NIBBLE_WAIT;


 INIT_WORK(&nl->immediate, plip_bh);
 INIT_DELAYED_WORK(&nl->deferred, plip_kick_bh);

 if (dev->irq == -1)
  INIT_DELAYED_WORK(&nl->timer, plip_timer_bh);

 spin_lock_init(&nl->lock);
}
