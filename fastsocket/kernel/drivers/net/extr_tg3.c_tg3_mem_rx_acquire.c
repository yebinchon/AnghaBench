
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_napi {int rx_rcb; int rx_rcb_mapping; int prodring; } ;
struct tg3 {unsigned int rxq_cnt; TYPE_1__* pdev; struct tg3_napi* napi; } ;
struct TYPE_2__ {int dev; } ;


 int ENABLE_RSS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TG3_RX_RCB_RING_BYTES (struct tg3*) ;
 int __GFP_ZERO ;
 int dma_alloc_coherent (int *,int ,int *,int) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_mem_rx_release (struct tg3*) ;
 scalar_t__ tg3_rx_prodring_init (struct tg3*,int *) ;

__attribute__((used)) static int tg3_mem_rx_acquire(struct tg3 *tp)
{
 unsigned int i, limit;

 limit = tp->rxq_cnt;




 if (tg3_flag(tp, ENABLE_RSS))
  limit++;

 for (i = 0; i < limit; i++) {
  struct tg3_napi *tnapi = &tp->napi[i];

  if (tg3_rx_prodring_init(tp, &tnapi->prodring))
   goto err_out;





  if (!i && tg3_flag(tp, ENABLE_RSS))
   continue;

  tnapi->rx_rcb = dma_alloc_coherent(&tp->pdev->dev,
         TG3_RX_RCB_RING_BYTES(tp),
         &tnapi->rx_rcb_mapping,
         GFP_KERNEL | __GFP_ZERO);
  if (!tnapi->rx_rcb)
   goto err_out;
 }

 return 0;

err_out:
 tg3_mem_rx_release(tp);
 return -ENOMEM;
}
