
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct txbd8 {int lstatus; int length; int bufPtr; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct gfar_private {int tx_ring_size; int skb_dirtytx; scalar_t__ rx_ring_size; int num_txbdfree; struct txbd8* dirty_tx; struct sk_buff** tx_skbuff; int rx_recycle; scalar_t__ rx_buffer_size; TYPE_1__* ofdev; struct txbd8* tx_bd_base; } ;
struct TYPE_6__ {int nr_frags; } ;
struct TYPE_4__ {int dev; } ;


 int BD_LENGTH_MASK ;
 int BD_LFLAG (int ) ;
 int DMA_TO_DEVICE ;
 scalar_t__ RXBUF_ALIGNMENT ;
 int TXBD_READY ;
 int TXBD_WRAP ;
 int TX_RING_MOD_MASK (int) ;
 int __skb_queue_head (int *,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 struct txbd8* next_txbd (struct txbd8*,struct txbd8*,int) ;
 scalar_t__ skb_queue_len (int *) ;
 scalar_t__ skb_recycle_check (struct sk_buff*,scalar_t__) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 struct txbd8* skip_txbd (struct txbd8*,int,struct txbd8*,int) ;

__attribute__((used)) static int gfar_clean_tx_ring(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 struct txbd8 *bdp;
 struct txbd8 *lbdp = ((void*)0);
 struct txbd8 *base = priv->tx_bd_base;
 struct sk_buff *skb;
 int skb_dirtytx;
 int tx_ring_size = priv->tx_ring_size;
 int frags = 0;
 int i;
 int howmany = 0;
 u32 lstatus;

 bdp = priv->dirty_tx;
 skb_dirtytx = priv->skb_dirtytx;

 while ((skb = priv->tx_skbuff[skb_dirtytx])) {
  frags = skb_shinfo(skb)->nr_frags;
  lbdp = skip_txbd(bdp, frags, base, tx_ring_size);

  lstatus = lbdp->lstatus;


  if ((lstatus & BD_LFLAG(TXBD_READY)) &&
    (lstatus & BD_LENGTH_MASK))
   break;

  dma_unmap_single(&priv->ofdev->dev,
    bdp->bufPtr,
    bdp->length,
    DMA_TO_DEVICE);

  bdp->lstatus &= BD_LFLAG(TXBD_WRAP);
  bdp = next_txbd(bdp, base, tx_ring_size);

  for (i = 0; i < frags; i++) {
   dma_unmap_page(&priv->ofdev->dev,
     bdp->bufPtr,
     bdp->length,
     DMA_TO_DEVICE);
   bdp->lstatus &= BD_LFLAG(TXBD_WRAP);
   bdp = next_txbd(bdp, base, tx_ring_size);
  }





  if (skb_queue_len(&priv->rx_recycle) < priv->rx_ring_size &&
    skb_recycle_check(skb, priv->rx_buffer_size +
     RXBUF_ALIGNMENT))
   __skb_queue_head(&priv->rx_recycle, skb);
  else
   dev_kfree_skb_any(skb);

  priv->tx_skbuff[skb_dirtytx] = ((void*)0);

  skb_dirtytx = (skb_dirtytx + 1) &
   TX_RING_MOD_MASK(tx_ring_size);

  howmany++;
  priv->num_txbdfree += frags + 1;
 }


 if (netif_queue_stopped(dev) && priv->num_txbdfree)
  netif_wake_queue(dev);


 priv->skb_dirtytx = skb_dirtytx;
 priv->dirty_tx = bdp;

 dev->stats.tx_packets += howmany;

 return howmany;
}
