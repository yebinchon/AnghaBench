
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcm_enet_priv {int napi; int tx_chan; int rx_chan; } ;
typedef int irqreturn_t ;


 int ENETDMA_IRMASK_REG (int ) ;
 int IRQ_HANDLED ;
 int enet_dma_writel (struct bcm_enet_priv*,int ,int ) ;
 int napi_schedule (int *) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t bcm_enet_isr_dma(int irq, void *dev_id)
{
 struct net_device *dev;
 struct bcm_enet_priv *priv;

 dev = dev_id;
 priv = netdev_priv(dev);


 enet_dma_writel(priv, 0, ENETDMA_IRMASK_REG(priv->rx_chan));
 enet_dma_writel(priv, 0, ENETDMA_IRMASK_REG(priv->tx_chan));

 napi_schedule(&priv->napi);

 return IRQ_HANDLED;
}
