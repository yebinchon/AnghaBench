
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mbit; } ;
struct s6gmac {TYPE_2__* phydev; int lock; scalar_t__ reg; int tx_chan; int tx_dma; int rx_chan; int rx_dma; TYPE_1__ link; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int link; } ;


 scalar_t__ S6_GMAC_HOST_INTMASK ;
 int S6_GMAC_HOST_INT_RXBURSTUNDER ;
 int S6_GMAC_HOST_INT_RXPOSTRFULL ;
 int S6_GMAC_HOST_INT_RXPOSTRUNDER ;
 int S6_GMAC_HOST_INT_TXBURSTOVER ;
 int S6_GMAC_HOST_INT_TXPREWOVER ;
 struct s6gmac* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_read_status (TYPE_2__*) ;
 int phy_start (TYPE_2__*) ;
 int s6dmac_enable_chan (int ,int ,int,int,int,int,int ,int ,int ,int,int,int,int ,int) ;
 int s6gmac_init_device (struct net_device*) ;
 int s6gmac_init_dmac (struct net_device*) ;
 int s6gmac_init_stats (struct net_device*) ;
 int s6gmac_linkisup (struct net_device*,int ) ;
 int s6gmac_rx_fillfifo (struct s6gmac*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s6gmac_open(struct net_device *dev)
{
 struct s6gmac *pd = netdev_priv(dev);
 unsigned long flags;
 phy_read_status(pd->phydev);
 spin_lock_irqsave(&pd->lock, flags);
 pd->link.mbit = 0;
 s6gmac_linkisup(dev, pd->phydev->link);
 s6gmac_init_device(dev);
 s6gmac_init_stats(dev);
 s6gmac_init_dmac(dev);
 s6gmac_rx_fillfifo(pd);
 s6dmac_enable_chan(pd->rx_dma, pd->rx_chan,
  2, 1, 0, 1, 0, 0, 0, 7, -1, 2, 0, 1);
 s6dmac_enable_chan(pd->tx_dma, pd->tx_chan,
  2, 0, 1, 0, 0, 0, 0, 7, -1, 2, 0, 1);
 writel(0 << S6_GMAC_HOST_INT_TXBURSTOVER |
  0 << S6_GMAC_HOST_INT_TXPREWOVER |
  0 << S6_GMAC_HOST_INT_RXBURSTUNDER |
  0 << S6_GMAC_HOST_INT_RXPOSTRFULL |
  0 << S6_GMAC_HOST_INT_RXPOSTRUNDER,
  pd->reg + S6_GMAC_HOST_INTMASK);
 spin_unlock_irqrestore(&pd->lock, flags);
 phy_start(pd->phydev);
 netif_start_queue(dev);
 return 0;
}
