
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_channel {int tx_wdog; int tx_t; int lock; int ctrl; } ;
struct net_device {scalar_t__ ml_priv; } ;


 int Outb (int ,int ) ;
 int R1 ;
 int R3 ;
 int del_timer_sync (int *) ;
 int netif_stop_queue (struct net_device*) ;
 int scc_discard_buffers (struct scc_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr (struct scc_channel*,int ,int ) ;

__attribute__((used)) static int scc_net_close(struct net_device *dev)
{
 struct scc_channel *scc = (struct scc_channel *) dev->ml_priv;
 unsigned long flags;

 netif_stop_queue(dev);

 spin_lock_irqsave(&scc->lock, flags);
 Outb(scc->ctrl,0);
 wr(scc,R1,0);
 wr(scc,R3,0);
 spin_unlock_irqrestore(&scc->lock, flags);

 del_timer_sync(&scc->tx_t);
 del_timer_sync(&scc->tx_wdog);

 scc_discard_buffers(scc);

 return 0;
}
