
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_queue {int rx_ring_size; scalar_t__ index; scalar_t__ rx_desc_area_size; scalar_t__* rx_skb; int rx_desc_dma; int rx_desc_area; scalar_t__ rx_desc_count; } ;
struct mv643xx_eth_private {scalar_t__ rx_desc_sram_size; TYPE_1__* dev; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int KERN_ERR ;
 int dev_kfree_skb (scalar_t__) ;
 int dev_printk (int ,TYPE_2__*,char*,scalar_t__) ;
 int dma_free_coherent (int ,scalar_t__,int ,int ) ;
 int iounmap (int ) ;
 int kfree (scalar_t__*) ;
 int rxq_disable (struct rx_queue*) ;
 struct mv643xx_eth_private* rxq_to_mp (struct rx_queue*) ;

__attribute__((used)) static void rxq_deinit(struct rx_queue *rxq)
{
 struct mv643xx_eth_private *mp = rxq_to_mp(rxq);
 int i;

 rxq_disable(rxq);

 for (i = 0; i < rxq->rx_ring_size; i++) {
  if (rxq->rx_skb[i]) {
   dev_kfree_skb(rxq->rx_skb[i]);
   rxq->rx_desc_count--;
  }
 }

 if (rxq->rx_desc_count) {
  dev_printk(KERN_ERR, &mp->dev->dev,
      "error freeing rx ring -- %d skbs stuck\n",
      rxq->rx_desc_count);
 }

 if (rxq->index == 0 &&
     rxq->rx_desc_area_size <= mp->rx_desc_sram_size)
  iounmap(rxq->rx_desc_area);
 else
  dma_free_coherent(mp->dev->dev.parent, rxq->rx_desc_area_size,
      rxq->rx_desc_area, rxq->rx_desc_dma);

 kfree(rxq->rx_skb);
}
