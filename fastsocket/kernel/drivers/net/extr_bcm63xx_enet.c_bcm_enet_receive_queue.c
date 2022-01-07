
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; struct net_device* dev; int data; } ;
struct net_device {int last_rx; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int rx_bytes; int rx_packets; int rx_dropped; int rx_fifo_errors; int rx_frame_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; } ;
struct bcm_enet_priv {int rx_desc_count; int rx_curr_desc; int rx_ring_size; int rx_chan; TYPE_2__ stats; struct sk_buff** rx_skb; int rx_skb_size; TYPE_1__* pdev; struct bcm_enet_desc* rx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int address; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMADESC_CRC_MASK ;
 int DMADESC_ERR_MASK ;
 int DMADESC_ESOP_MASK ;
 int DMADESC_LENGTH_MASK ;
 int DMADESC_LENGTH_SHIFT ;
 int DMADESC_OVSIZE_MASK ;
 int DMADESC_OV_MASK ;
 int DMADESC_OWNER_MASK ;
 int DMADESC_UNDER_MASK ;
 int DMA_FROM_DEVICE ;
 int ENETDMA_CHANCFG_EN_MASK ;
 int ENETDMA_CHANCFG_REG (int ) ;
 scalar_t__ NET_IP_ALIGN ;
 int bcm_enet_refill_rx (struct net_device*) ;
 unsigned int copybreak ;
 int dma_sync_single_for_cpu (struct device*,int ,unsigned int,int ) ;
 int dma_sync_single_for_device (struct device*,int ,unsigned int,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int enet_dma_writel (struct bcm_enet_priv*,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int jiffies ;
 int memcpy (int ,int ,unsigned int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int rmb () ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bcm_enet_receive_queue(struct net_device *dev, int budget)
{
 struct bcm_enet_priv *priv;
 struct device *kdev;
 int processed;

 priv = netdev_priv(dev);
 kdev = &priv->pdev->dev;
 processed = 0;



 if (budget > priv->rx_desc_count)
  budget = priv->rx_desc_count;

 do {
  struct bcm_enet_desc *desc;
  struct sk_buff *skb;
  int desc_idx;
  u32 len_stat;
  unsigned int len;

  desc_idx = priv->rx_curr_desc;
  desc = &priv->rx_desc_cpu[desc_idx];



  rmb();

  len_stat = desc->len_stat;


  if (len_stat & DMADESC_OWNER_MASK)
   break;

  processed++;
  priv->rx_curr_desc++;
  if (priv->rx_curr_desc == priv->rx_ring_size)
   priv->rx_curr_desc = 0;
  priv->rx_desc_count--;



  if ((len_stat & DMADESC_ESOP_MASK) != DMADESC_ESOP_MASK) {
   priv->stats.rx_dropped++;
   continue;
  }


  if (unlikely(len_stat & DMADESC_ERR_MASK)) {
   priv->stats.rx_errors++;

   if (len_stat & DMADESC_OVSIZE_MASK)
    priv->stats.rx_length_errors++;
   if (len_stat & DMADESC_CRC_MASK)
    priv->stats.rx_crc_errors++;
   if (len_stat & DMADESC_UNDER_MASK)
    priv->stats.rx_frame_errors++;
   if (len_stat & DMADESC_OV_MASK)
    priv->stats.rx_fifo_errors++;
   continue;
  }


  skb = priv->rx_skb[desc_idx];
  len = (len_stat & DMADESC_LENGTH_MASK) >> DMADESC_LENGTH_SHIFT;

  len -= 4;

  if (len < copybreak) {
   struct sk_buff *nskb;

   nskb = netdev_alloc_skb(dev, len + NET_IP_ALIGN);
   if (!nskb) {

    priv->stats.rx_dropped++;
    continue;
   }



   skb_reserve(nskb, NET_IP_ALIGN);
   dma_sync_single_for_cpu(kdev, desc->address,
      len, DMA_FROM_DEVICE);
   memcpy(nskb->data, skb->data, len);
   dma_sync_single_for_device(kdev, desc->address,
         len, DMA_FROM_DEVICE);
   skb = nskb;
  } else {
   dma_unmap_single(&priv->pdev->dev, desc->address,
      priv->rx_skb_size, DMA_FROM_DEVICE);
   priv->rx_skb[desc_idx] = ((void*)0);
  }

  skb_put(skb, len);
  skb->dev = dev;
  skb->protocol = eth_type_trans(skb, dev);
  priv->stats.rx_packets++;
  priv->stats.rx_bytes += len;
  dev->last_rx = jiffies;
  netif_receive_skb(skb);

 } while (--budget > 0);

 if (processed || !priv->rx_desc_count) {
  bcm_enet_refill_rx(dev);


  enet_dma_writel(priv, ENETDMA_CHANCFG_EN_MASK,
    ENETDMA_CHANCFG_REG(priv->rx_chan));
 }

 return processed;
}
