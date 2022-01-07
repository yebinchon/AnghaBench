
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ irq; } ;
struct lance_regs {int rdp; int rap; } ;
struct lance_private {scalar_t__ dma_irq; int multicast_timer; struct lance_regs* ll; } ;


 int IO_REG_SSR ;
 int IO_SSR_LANCE_DMA_EN ;
 int LE_C0_STOP ;
 int LE_CSR0 ;
 int del_timer_sync (int *) ;
 int fast_iob () ;
 int fast_mb () ;
 int free_irq (scalar_t__,struct net_device*) ;
 int ioasic_read (int ) ;
 int ioasic_ssr_lock ;
 int ioasic_write (int ,int) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writereg (int *,int ) ;

__attribute__((used)) static int lance_close(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;

 netif_stop_queue(dev);
 del_timer_sync(&lp->multicast_timer);


 writereg(&ll->rap, LE_CSR0);
 writereg(&ll->rdp, LE_C0_STOP);

 if (lp->dma_irq >= 0) {
  unsigned long flags;

  spin_lock_irqsave(&ioasic_ssr_lock, flags);

  fast_mb();

  ioasic_write(IO_REG_SSR,
        ioasic_read(IO_REG_SSR) & ~IO_SSR_LANCE_DMA_EN);

  fast_iob();
  spin_unlock_irqrestore(&ioasic_ssr_lock, flags);

  free_irq(lp->dma_irq, dev);
 }
 free_irq(dev->irq, dev);
 return 0;
}
