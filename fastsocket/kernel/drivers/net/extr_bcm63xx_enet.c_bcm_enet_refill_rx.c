
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct bcm_enet_priv {scalar_t__ rx_desc_count; scalar_t__ rx_ring_size; int rx_dirty_desc; int rx_skb_size; TYPE_2__ rx_timeout; TYPE_1__* pdev; int rx_chan; struct sk_buff** rx_skb; struct bcm_enet_desc* rx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int address; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int dev; } ;


 int DMADESC_LENGTH_SHIFT ;
 int DMADESC_OWNER_MASK ;
 int DMADESC_WRAP_MASK ;
 int DMA_FROM_DEVICE ;
 int ENETDMA_BUFALLOC_REG (int ) ;
 scalar_t__ HZ ;
 int add_timer (TYPE_2__*) ;
 int dev_warn (int *,char*) ;
 int dma_map_single (int *,int ,int,int ) ;
 int enet_dma_writel (struct bcm_enet_priv*,int,int ) ;
 scalar_t__ jiffies ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int wmb () ;

__attribute__((used)) static int bcm_enet_refill_rx(struct net_device *dev)
{
 struct bcm_enet_priv *priv;

 priv = netdev_priv(dev);

 while (priv->rx_desc_count < priv->rx_ring_size) {
  struct bcm_enet_desc *desc;
  struct sk_buff *skb;
  dma_addr_t p;
  int desc_idx;
  u32 len_stat;

  desc_idx = priv->rx_dirty_desc;
  desc = &priv->rx_desc_cpu[desc_idx];

  if (!priv->rx_skb[desc_idx]) {
   skb = netdev_alloc_skb(dev, priv->rx_skb_size);
   if (!skb)
    break;
   priv->rx_skb[desc_idx] = skb;

   p = dma_map_single(&priv->pdev->dev, skb->data,
        priv->rx_skb_size,
        DMA_FROM_DEVICE);
   desc->address = p;
  }

  len_stat = priv->rx_skb_size << DMADESC_LENGTH_SHIFT;
  len_stat |= DMADESC_OWNER_MASK;
  if (priv->rx_dirty_desc == priv->rx_ring_size - 1) {
   len_stat |= DMADESC_WRAP_MASK;
   priv->rx_dirty_desc = 0;
  } else {
   priv->rx_dirty_desc++;
  }
  wmb();
  desc->len_stat = len_stat;

  priv->rx_desc_count++;


  enet_dma_writel(priv, 1, ENETDMA_BUFALLOC_REG(priv->rx_chan));
 }



 if (priv->rx_desc_count == 0 && netif_running(dev)) {
  dev_warn(&priv->pdev->dev, "unable to refill rx ring\n");
  priv->rx_timeout.expires = jiffies + HZ;
  add_timer(&priv->rx_timeout);
 }

 return 0;
}
