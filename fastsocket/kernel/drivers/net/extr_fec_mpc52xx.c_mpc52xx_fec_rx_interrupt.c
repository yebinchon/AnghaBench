
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int data; int protocol; struct net_device* dev; int len; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int rx_dropped; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; } ;
struct mpc52xx_fec_priv {int rx_dmatsk; } ;
struct bcom_fec_bd {void* skb_pa; void* status; } ;
struct bcom_bd {int dummy; } ;
typedef int irqreturn_t ;


 int BCOM_FEC_RX_BD_ERRORS ;
 int BCOM_FEC_RX_BD_LEN_MASK ;
 int DMA_FROM_DEVICE ;
 void* FEC_RX_BUFFER_SIZE ;
 int IRQ_HANDLED ;
 scalar_t__ bcom_buffer_done (int ) ;
 scalar_t__ bcom_prepare_next_buffer (int ) ;
 struct sk_buff* bcom_retrieve_buffer (int ,int*,struct bcom_bd**) ;
 int bcom_submit_next_buffer (int ,struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (void*) ;
 int dev_notice (TYPE_2__*,char*) ;
 void* dma_map_single (int ,int ,void*,int ) ;
 int dma_unmap_single (int ,void*,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static irqreturn_t mpc52xx_fec_rx_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);

 while (bcom_buffer_done(priv->rx_dmatsk)) {
  struct sk_buff *skb;
  struct sk_buff *rskb;
  struct bcom_fec_bd *bd;
  u32 status;

  rskb = bcom_retrieve_buffer(priv->rx_dmatsk, &status,
    (struct bcom_bd **)&bd);
  dma_unmap_single(dev->dev.parent, bd->skb_pa, rskb->len,
     DMA_FROM_DEVICE);


  if (status & BCOM_FEC_RX_BD_ERRORS) {

   bd = (struct bcom_fec_bd *)
    bcom_prepare_next_buffer(priv->rx_dmatsk);

   bd->status = FEC_RX_BUFFER_SIZE;
   bd->skb_pa = dma_map_single(dev->dev.parent,
     rskb->data,
     FEC_RX_BUFFER_SIZE, DMA_FROM_DEVICE);

   bcom_submit_next_buffer(priv->rx_dmatsk, rskb);

   dev->stats.rx_dropped++;

   continue;
  }



  skb = dev_alloc_skb(FEC_RX_BUFFER_SIZE);
  if (skb) {

   int length = status & BCOM_FEC_RX_BD_LEN_MASK;

   skb_put(rskb, length - 4);

   rskb->dev = dev;
   rskb->protocol = eth_type_trans(rskb, dev);

   netif_rx(rskb);
  } else {

   dev_notice(&dev->dev, "Memory squeeze, dropping packet.\n");
   dev->stats.rx_dropped++;

   skb = rskb;
  }

  bd = (struct bcom_fec_bd *)
   bcom_prepare_next_buffer(priv->rx_dmatsk);

  bd->status = FEC_RX_BUFFER_SIZE;
  bd->skb_pa = dma_map_single(dev->dev.parent, skb->data,
    FEC_RX_BUFFER_SIZE, DMA_FROM_DEVICE);

  bcom_submit_next_buffer(priv->rx_dmatsk, skb);
 }

 return IRQ_HANDLED;
}
