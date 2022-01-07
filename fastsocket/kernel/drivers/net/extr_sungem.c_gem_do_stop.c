
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gem {int lock; TYPE_1__* pdev; int tx_lock; scalar_t__ running; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,void*) ;
 int gem_clean_rings (struct gem*) ;
 int gem_disable_ints (struct gem*) ;
 int gem_put_cell (struct gem*) ;
 int gem_reset (struct gem*) ;
 int gem_stop_dma (struct gem*) ;
 int msleep (int) ;
 struct gem* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gem_do_stop(struct net_device *dev, int wol)
{
 struct gem *gp = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&gp->lock, flags);
 spin_lock(&gp->tx_lock);

 gp->running = 0;


 netif_stop_queue(dev);


 gem_disable_ints(gp);


 spin_unlock(&gp->tx_lock);
 spin_unlock_irqrestore(&gp->lock, flags);


 gem_stop_dma(gp);
 msleep(10);
 if (!wol)
  gem_reset(gp);
 msleep(10);


 gem_clean_rings(gp);


 free_irq(gp->pdev->irq, (void *) dev);


 if (!wol) {
  spin_lock_irqsave(&gp->lock, flags);
  gem_put_cell(gp);
  spin_unlock_irqrestore(&gp->lock, flags);
 }
}
