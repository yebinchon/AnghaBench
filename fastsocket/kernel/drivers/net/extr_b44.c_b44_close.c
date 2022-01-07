
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct b44 {int flags; int lock; int timer; int napi; } ;


 int B44_FLAG_WOL_ENABLE ;
 int B44_PARTIAL_RESET ;
 int b44_free_consistent (struct b44*) ;
 int b44_free_rings (struct b44*) ;
 int b44_halt (struct b44*) ;
 int b44_init_hw (struct b44*,int ) ;
 int b44_setup_wol (struct b44*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_close(struct net_device *dev)
{
 struct b44 *bp = netdev_priv(dev);

 netif_stop_queue(dev);

 napi_disable(&bp->napi);

 del_timer_sync(&bp->timer);

 spin_lock_irq(&bp->lock);

 b44_halt(bp);
 b44_free_rings(bp);
 netif_carrier_off(dev);

 spin_unlock_irq(&bp->lock);

 free_irq(dev->irq, dev);

 if (bp->flags & B44_FLAG_WOL_ENABLE) {
  b44_init_hw(bp, B44_PARTIAL_RESET);
  b44_setup_wol(bp);
 }

 b44_free_consistent(bp);

 return 0;
}
