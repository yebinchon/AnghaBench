
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dscc4_dev_priv {int tx_current; int dev_id; scalar_t__ base_addr; scalar_t__ ltda; scalar_t__ tx_fd_dma; } ;
struct TxFD {int dummy; } ;


 scalar_t__ CH0LTDA ;
 int TX_RING_SIZE ;
 int readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dscc4_do_tx(struct dscc4_dev_priv *dpriv,
          struct net_device *dev)
{
 dpriv->ltda = dpriv->tx_fd_dma +
                      ((dpriv->tx_current-1)%TX_RING_SIZE)*sizeof(struct TxFD);
 writel(dpriv->ltda, dpriv->base_addr + CH0LTDA + dpriv->dev_id*4);

 readl(dpriv->base_addr + CH0LTDA + dpriv->dev_id*4);
}
