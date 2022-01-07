
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6gmac {int rx_dma; int tx_dma; int rx_chan; int tx_chan; } ;
struct net_device {int dummy; } ;


 int S6_HIFDMA_GMACRX ;
 int S6_HIFDMA_GMACTX ;
 struct s6gmac* netdev_priv (struct net_device*) ;
 int s6dmac_disable_chan (int ,int ) ;
 int s6dmac_disable_error_irqs (int ,int) ;

__attribute__((used)) static inline void s6gmac_init_dmac(struct net_device *dev)
{
 struct s6gmac *pd = netdev_priv(dev);
 s6dmac_disable_chan(pd->tx_dma, pd->tx_chan);
 s6dmac_disable_chan(pd->rx_dma, pd->rx_chan);
 s6dmac_disable_error_irqs(pd->tx_dma, 1 << S6_HIFDMA_GMACTX);
 s6dmac_disable_error_irqs(pd->rx_dma, 1 << S6_HIFDMA_GMACRX);
}
