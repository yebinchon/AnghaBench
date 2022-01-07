
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; } ;
struct TYPE_5__ {int rx_bytes; int rx_packets; int rx_missed_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct ks8695_priv {int next_rx_desc_read; TYPE_3__* rx_ring; TYPE_1__* rx_buffers; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int status; scalar_t__ data_ptr; } ;
struct TYPE_4__ {int length; int dma_ptr; struct sk_buff* skb; } ;


 int DMA_FROM_DEVICE ;
 int IRQ_HANDLED ;
 int KS8695_DRSC ;
 int MAX_RX_DESC_MASK ;
 int RDES_CE ;
 int RDES_ES ;
 int RDES_FLEN ;
 int RDES_FS ;
 int RDES_LS ;
 int RDES_OWN ;
 int RDES_RE ;
 int RDES_RF ;
 int RDES_TL ;
 int cpu_to_le32 (int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ks8695_refill_rxbuffers (struct ks8695_priv*) ;
 int ks8695_writereg (struct ks8695_priv*,int ,int ) ;
 int le32_to_cpu (int) ;
 scalar_t__ likely (int) ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int rmb () ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static irqreturn_t
ks8695_rx_irq(int irq, void *dev_id)
{
 struct net_device *ndev = (struct net_device *)dev_id;
 struct ks8695_priv *ksp = netdev_priv(ndev);
 struct sk_buff *skb;
 int buff_n;
 u32 flags;
 int pktlen;
 int last_rx_processed = -1;

 buff_n = ksp->next_rx_desc_read;
 do {
  if (ksp->rx_buffers[buff_n].skb &&
      !(ksp->rx_ring[buff_n].status & cpu_to_le32(RDES_OWN))) {
   rmb();
   flags = le32_to_cpu(ksp->rx_ring[buff_n].status);



   if ((flags & (RDES_FS | RDES_LS)) !=
       (RDES_FS | RDES_LS)) {





    goto rx_failure;
   }

   if (flags & (RDES_ES | RDES_RE)) {

    ndev->stats.rx_errors++;
    if (flags & RDES_TL)
     ndev->stats.rx_length_errors++;
    if (flags & RDES_RF)
     ndev->stats.rx_length_errors++;
    if (flags & RDES_CE)
     ndev->stats.rx_crc_errors++;
    if (flags & RDES_RE)
     ndev->stats.rx_missed_errors++;

    goto rx_failure;
   }

   pktlen = flags & RDES_FLEN;
   pktlen -= 4;


   skb = ksp->rx_buffers[buff_n].skb;


   ksp->rx_buffers[buff_n].skb = ((void*)0);
   ksp->rx_ring[buff_n].data_ptr = 0;


   dma_unmap_single(ksp->dev,
      ksp->rx_buffers[buff_n].dma_ptr,
      ksp->rx_buffers[buff_n].length,
      DMA_FROM_DEVICE);


   skb_put(skb, pktlen);
   skb->protocol = eth_type_trans(skb, ndev);
   netif_rx(skb);


   ndev->stats.rx_packets++;
   ndev->stats.rx_bytes += pktlen;
   goto rx_finished;

rx_failure:




   ksp->rx_ring[buff_n].status = cpu_to_le32(RDES_OWN);
rx_finished:



   last_rx_processed = buff_n;
  } else {

   break;
  }
  buff_n = (buff_n + 1) & MAX_RX_DESC_MASK;
 } while (buff_n != ksp->next_rx_desc_read);


 if (likely(last_rx_processed != -1))
  ksp->next_rx_desc_read =
   (last_rx_processed + 1) & MAX_RX_DESC_MASK;


 ks8695_refill_rxbuffers(ksp);


 ks8695_writereg(ksp, KS8695_DRSC, 0);

 return IRQ_HANDLED;
}
