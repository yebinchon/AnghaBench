
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6gmac {int lock; int tx_chan; int tx_dma; int rx_chan; int rx_dma; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct s6gmac* netdev_priv (struct net_device*) ;
 scalar_t__ s6dmac_termcnt_irq (int ,int ) ;
 int s6gmac_rx_fillfifo (struct s6gmac*) ;
 int s6gmac_rx_interrupt (struct net_device*) ;
 int s6gmac_stats_interrupt (struct s6gmac*,int) ;
 int s6gmac_tx_interrupt (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t s6gmac_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct s6gmac *pd = netdev_priv(dev);
 if (!dev)
  return IRQ_NONE;
 spin_lock(&pd->lock);
 if (s6dmac_termcnt_irq(pd->rx_dma, pd->rx_chan))
  s6gmac_rx_interrupt(dev);
 s6gmac_rx_fillfifo(pd);
 if (s6dmac_termcnt_irq(pd->tx_dma, pd->tx_chan))
  s6gmac_tx_interrupt(dev);
 s6gmac_stats_interrupt(pd, 0);
 s6gmac_stats_interrupt(pd, 1);
 spin_unlock(&pd->lock);
 return IRQ_HANDLED;
}
