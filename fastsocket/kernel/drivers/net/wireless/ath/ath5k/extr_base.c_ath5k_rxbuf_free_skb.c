
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_common {int rx_bufsize; } ;
struct ath5k_hw {int dev; } ;
struct ath5k_buf {TYPE_1__* desc; scalar_t__ skbaddr; int * skb; } ;
struct TYPE_2__ {scalar_t__ ds_data; } ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

void
ath5k_rxbuf_free_skb(struct ath5k_hw *ah, struct ath5k_buf *bf)
{
 struct ath_common *common = ath5k_hw_common(ah);

 BUG_ON(!bf);
 if (!bf->skb)
  return;
 dma_unmap_single(ah->dev, bf->skbaddr, common->rx_bufsize,
   DMA_FROM_DEVICE);
 dev_kfree_skb_any(bf->skb);
 bf->skb = ((void*)0);
 bf->skbaddr = 0;
 bf->desc->ds_data = 0;
}
