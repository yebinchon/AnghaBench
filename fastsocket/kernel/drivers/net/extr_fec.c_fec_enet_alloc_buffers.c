
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct net_device {int dev; } ;
struct fec_enet_private {int * tx_bounce; struct bufdesc* tx_bd_base; struct sk_buff** rx_skbuff; struct bufdesc* rx_bd_base; } ;
struct bufdesc {int cbd_sc; scalar_t__ cbd_bufaddr; } ;


 int BD_ENET_RX_EMPTY ;
 int BD_SC_WRAP ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int FEC_ENET_RX_FRSIZE ;
 int FEC_ENET_TX_FRSIZE ;
 int GFP_KERNEL ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 scalar_t__ dma_map_single (int *,int ,int ,int ) ;
 int fec_enet_free_buffers (struct net_device*) ;
 int kmalloc (int ,int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fec_enet_alloc_buffers(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 int i;
 struct sk_buff *skb;
 struct bufdesc *bdp;

 bdp = fep->rx_bd_base;
 for (i = 0; i < RX_RING_SIZE; i++) {
  skb = dev_alloc_skb(FEC_ENET_RX_FRSIZE);
  if (!skb) {
   fec_enet_free_buffers(dev);
   return -ENOMEM;
  }
  fep->rx_skbuff[i] = skb;

  bdp->cbd_bufaddr = dma_map_single(&dev->dev, skb->data,
    FEC_ENET_RX_FRSIZE, DMA_FROM_DEVICE);
  bdp->cbd_sc = BD_ENET_RX_EMPTY;
  bdp++;
 }


 bdp--;
 bdp->cbd_sc |= BD_SC_WRAP;

 bdp = fep->tx_bd_base;
 for (i = 0; i < TX_RING_SIZE; i++) {
  fep->tx_bounce[i] = kmalloc(FEC_ENET_TX_FRSIZE, GFP_KERNEL);

  bdp->cbd_sc = 0;
  bdp->cbd_bufaddr = 0;
  bdp++;
 }


 bdp--;
 bdp->cbd_sc |= BD_SC_WRAP;

 return 0;
}
