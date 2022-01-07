
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dev; } ;
struct fec_enet_private {int * tx_bounce; struct bufdesc* tx_bd_base; struct sk_buff** rx_skbuff; struct bufdesc* rx_bd_base; } ;
struct bufdesc {scalar_t__ cbd_bufaddr; } ;


 int DMA_FROM_DEVICE ;
 int FEC_ENET_RX_FRSIZE ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int kfree (int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fec_enet_free_buffers(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 int i;
 struct sk_buff *skb;
 struct bufdesc *bdp;

 bdp = fep->rx_bd_base;
 for (i = 0; i < RX_RING_SIZE; i++) {
  skb = fep->rx_skbuff[i];

  if (bdp->cbd_bufaddr)
   dma_unmap_single(&dev->dev, bdp->cbd_bufaddr,
     FEC_ENET_RX_FRSIZE, DMA_FROM_DEVICE);
  if (skb)
   dev_kfree_skb(skb);
  bdp++;
 }

 bdp = fep->tx_bd_base;
 for (i = 0; i < TX_RING_SIZE; i++)
  kfree(fep->tx_bounce[i]);
}
