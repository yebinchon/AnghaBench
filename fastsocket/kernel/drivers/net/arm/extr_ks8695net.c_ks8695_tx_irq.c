
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ks8695_priv {int tx_ring_used; TYPE_3__* tx_buffers; int dev; TYPE_2__* tx_ring; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int * skb; scalar_t__ length; int dma_ptr; } ;
struct TYPE_5__ {int owner; scalar_t__ data_ptr; } ;


 int DMA_TO_DEVICE ;
 int IRQ_HANDLED ;
 int MAX_TX_DESC ;
 int TDES_OWN ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb_irq (int *) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rmb () ;

__attribute__((used)) static irqreturn_t
ks8695_tx_irq(int irq, void *dev_id)
{
 struct net_device *ndev = (struct net_device *)dev_id;
 struct ks8695_priv *ksp = netdev_priv(ndev);
 int buff_n;

 for (buff_n = 0; buff_n < MAX_TX_DESC; ++buff_n) {
  if (ksp->tx_buffers[buff_n].skb &&
      !(ksp->tx_ring[buff_n].owner & cpu_to_le32(TDES_OWN))) {
   rmb();


   ndev->stats.tx_packets++;
   ndev->stats.tx_bytes += ksp->tx_buffers[buff_n].length;


   ksp->tx_ring[buff_n].data_ptr = 0;


   dma_unmap_single(ksp->dev,
      ksp->tx_buffers[buff_n].dma_ptr,
      ksp->tx_buffers[buff_n].length,
      DMA_TO_DEVICE);
   dev_kfree_skb_irq(ksp->tx_buffers[buff_n].skb);
   ksp->tx_buffers[buff_n].skb = ((void*)0);
   ksp->tx_ring_used--;
  }
 }

 netif_wake_queue(ndev);

 return IRQ_HANDLED;
}
