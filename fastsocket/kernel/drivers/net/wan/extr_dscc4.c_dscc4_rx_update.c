
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dscc4_dev_priv {int rx_dirty; int dev_id; scalar_t__ base_addr; scalar_t__ lrda; scalar_t__ rx_fd_dma; } ;
struct RxFD {int dummy; } ;


 scalar_t__ CH0LRDA ;
 int RX_RING_SIZE ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dscc4_rx_update(struct dscc4_dev_priv *dpriv,
       struct net_device *dev)
{
 dpriv->lrda = dpriv->rx_fd_dma +
        ((dpriv->rx_dirty - 1)%RX_RING_SIZE)*sizeof(struct RxFD);
 writel(dpriv->lrda, dpriv->base_addr + CH0LRDA + dpriv->dev_id*4);
}
