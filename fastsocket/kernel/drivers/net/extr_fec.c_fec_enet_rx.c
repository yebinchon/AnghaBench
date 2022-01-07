
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ushort ;
struct sk_buff {int protocol; } ;
struct TYPE_2__ {int rx_bytes; int rx_dropped; int rx_packets; int rx_frame_errors; int rx_errors; int rx_fifo_errors; int rx_crc_errors; int rx_length_errors; } ;
struct net_device {TYPE_1__ stats; int name; } ;
struct fec_enet_private {int hw_lock; struct bufdesc* cur_rx; scalar_t__ hwp; struct bufdesc* rx_bd_base; int opened; } ;
struct bufdesc {unsigned short cbd_sc; int cbd_datlen; int cbd_bufaddr; } ;
typedef int __u8 ;


 unsigned short BD_ENET_RX_CL ;
 unsigned short BD_ENET_RX_CR ;
 unsigned short BD_ENET_RX_EMPTY ;
 unsigned short BD_ENET_RX_LAST ;
 unsigned short BD_ENET_RX_LG ;
 unsigned short BD_ENET_RX_NO ;
 unsigned short BD_ENET_RX_OV ;
 unsigned short BD_ENET_RX_SH ;
 unsigned short BD_ENET_RX_STATS ;
 unsigned short BD_ENET_RX_WRAP ;
 int DMA_FROM_DEVICE ;
 scalar_t__ FEC_R_DES_ACTIVE ;
 int NET_IP_ALIGN ;
 scalar_t__ __va (int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dma_map_single (int *,int *,int,int ) ;
 int dma_unmap_single (int *,int ,int,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int flush_cache_all () ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int printk (char*,...) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
fec_enet_rx(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 struct bufdesc *bdp;
 unsigned short status;
 struct sk_buff *skb;
 ushort pkt_len;
 __u8 *data;





 spin_lock(&fep->hw_lock);




 bdp = fep->cur_rx;

 while (!((status = bdp->cbd_sc) & BD_ENET_RX_EMPTY)) {




  if ((status & BD_ENET_RX_LAST) == 0)
   printk("FEC ENET: rcv is not +last\n");

  if (!fep->opened)
   goto rx_processing_done;


  if (status & (BD_ENET_RX_LG | BD_ENET_RX_SH | BD_ENET_RX_NO |
      BD_ENET_RX_CR | BD_ENET_RX_OV)) {
   dev->stats.rx_errors++;
   if (status & (BD_ENET_RX_LG | BD_ENET_RX_SH)) {

    dev->stats.rx_length_errors++;
   }
   if (status & BD_ENET_RX_NO)
    dev->stats.rx_frame_errors++;
   if (status & BD_ENET_RX_CR)
    dev->stats.rx_crc_errors++;
   if (status & BD_ENET_RX_OV)
    dev->stats.rx_fifo_errors++;
  }





  if (status & BD_ENET_RX_CL) {
   dev->stats.rx_errors++;
   dev->stats.rx_frame_errors++;
   goto rx_processing_done;
  }


  dev->stats.rx_packets++;
  pkt_len = bdp->cbd_datlen;
  dev->stats.rx_bytes += pkt_len;
  data = (__u8*)__va(bdp->cbd_bufaddr);

         dma_unmap_single(((void*)0), bdp->cbd_bufaddr, bdp->cbd_datlen,
           DMA_FROM_DEVICE);






  skb = dev_alloc_skb(pkt_len - 4 + NET_IP_ALIGN);

  if (unlikely(!skb)) {
   printk("%s: Memory squeeze, dropping packet.\n",
     dev->name);
   dev->stats.rx_dropped++;
  } else {
   skb_reserve(skb, NET_IP_ALIGN);
   skb_put(skb, pkt_len - 4);
   skb_copy_to_linear_data(skb, data, pkt_len - 4);
   skb->protocol = eth_type_trans(skb, dev);
   netif_rx(skb);
  }

         bdp->cbd_bufaddr = dma_map_single(((void*)0), data, bdp->cbd_datlen,
   DMA_FROM_DEVICE);
rx_processing_done:

  status &= ~BD_ENET_RX_STATS;


  status |= BD_ENET_RX_EMPTY;
  bdp->cbd_sc = status;


  if (status & BD_ENET_RX_WRAP)
   bdp = fep->rx_bd_base;
  else
   bdp++;




  writel(0, fep->hwp + FEC_R_DES_ACTIVE);
 }
 fep->cur_rx = bdp;

 spin_unlock(&fep->hw_lock);
}
