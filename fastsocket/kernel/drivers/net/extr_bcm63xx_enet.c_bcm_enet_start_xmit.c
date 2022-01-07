
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct net_device {int trans_start; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct bcm_enet_priv {size_t tx_curr_desc; size_t tx_ring_size; int tx_lock; TYPE_2__ stats; int tx_desc_count; int tx_chan; TYPE_1__* pdev; struct sk_buff** tx_skb; struct bcm_enet_desc* tx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int address; } ;
struct TYPE_3__ {int dev; } ;


 int DMADESC_APPEND_CRC ;
 int DMADESC_ESOP_MASK ;
 int DMADESC_LENGTH_MASK ;
 int DMADESC_LENGTH_SHIFT ;
 int DMADESC_OWNER_MASK ;
 int DMADESC_WRAP_MASK ;
 int DMA_TO_DEVICE ;
 int ENETDMA_CHANCFG_EN_MASK ;
 int ENETDMA_CHANCFG_REG (int ) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_err (int *,char*) ;
 int dma_map_single (int *,int ,int,int ) ;
 int enet_dma_writel (struct bcm_enet_priv*,int ,int ) ;
 int jiffies ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int bcm_enet_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct bcm_enet_priv *priv;
 struct bcm_enet_desc *desc;
 u32 len_stat;
 int ret;

 priv = netdev_priv(dev);


 spin_lock(&priv->tx_lock);



 if (unlikely(!priv->tx_desc_count)) {
  netif_stop_queue(dev);
  dev_err(&priv->pdev->dev, "xmit called with no tx desc "
   "available?\n");
  ret = NETDEV_TX_BUSY;
  goto out_unlock;
 }


 desc = &priv->tx_desc_cpu[priv->tx_curr_desc];
 priv->tx_skb[priv->tx_curr_desc] = skb;


 desc->address = dma_map_single(&priv->pdev->dev, skb->data, skb->len,
           DMA_TO_DEVICE);

 len_stat = (skb->len << DMADESC_LENGTH_SHIFT) & DMADESC_LENGTH_MASK;
 len_stat |= DMADESC_ESOP_MASK |
  DMADESC_APPEND_CRC |
  DMADESC_OWNER_MASK;

 priv->tx_curr_desc++;
 if (priv->tx_curr_desc == priv->tx_ring_size) {
  priv->tx_curr_desc = 0;
  len_stat |= DMADESC_WRAP_MASK;
 }
 priv->tx_desc_count--;



 wmb();
 desc->len_stat = len_stat;
 wmb();


 enet_dma_writel(priv, ENETDMA_CHANCFG_EN_MASK,
   ENETDMA_CHANCFG_REG(priv->tx_chan));


 if (!priv->tx_desc_count)
  netif_stop_queue(dev);

 priv->stats.tx_bytes += skb->len;
 priv->stats.tx_packets++;
 dev->trans_start = jiffies;
 ret = NETDEV_TX_OK;

out_unlock:
 spin_unlock(&priv->tx_lock);
 return ret;
}
