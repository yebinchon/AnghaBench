
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct tg3_napi {int * rx_rcb_prod_idx; struct tg3_hw_status* hw_status; int status_mapping; } ;
struct tg3_hw_status {TYPE_2__* idx; int rx_mini_consumer; int reserved; int rx_jumbo_consumer; } ;
struct tg3_hw_stats {int dummy; } ;
struct tg3 {int irq_cnt; TYPE_1__* pdev; struct tg3_napi* napi; void* hw_stats; int stats_mapping; } ;
struct TYPE_4__ {int rx_producer; } ;
struct TYPE_3__ {int dev; } ;


 int ENABLE_RSS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TG3_HW_STATUS_SIZE ;
 int __GFP_ZERO ;
 void* dma_alloc_coherent (int *,int,int *,int) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_free_consistent (struct tg3*) ;
 scalar_t__ tg3_mem_rx_acquire (struct tg3*) ;
 scalar_t__ tg3_mem_tx_acquire (struct tg3*) ;

__attribute__((used)) static int tg3_alloc_consistent(struct tg3 *tp)
{
 int i;

 tp->hw_stats = dma_alloc_coherent(&tp->pdev->dev,
       sizeof(struct tg3_hw_stats),
       &tp->stats_mapping,
       GFP_KERNEL | __GFP_ZERO);
 if (!tp->hw_stats)
  goto err_out;

 for (i = 0; i < tp->irq_cnt; i++) {
  struct tg3_napi *tnapi = &tp->napi[i];
  struct tg3_hw_status *sblk;

  tnapi->hw_status = dma_alloc_coherent(&tp->pdev->dev,
            TG3_HW_STATUS_SIZE,
            &tnapi->status_mapping,
            GFP_KERNEL | __GFP_ZERO);
  if (!tnapi->hw_status)
   goto err_out;

  sblk = tnapi->hw_status;

  if (tg3_flag(tp, ENABLE_RSS)) {
   u16 *prodptr = ((void*)0);







   switch (i) {
   case 1:
    prodptr = &sblk->idx[0].rx_producer;
    break;
   case 2:
    prodptr = &sblk->rx_jumbo_consumer;
    break;
   case 3:
    prodptr = &sblk->reserved;
    break;
   case 4:
    prodptr = &sblk->rx_mini_consumer;
    break;
   }
   tnapi->rx_rcb_prod_idx = prodptr;
  } else {
   tnapi->rx_rcb_prod_idx = &sblk->idx[0].rx_producer;
  }
 }

 if (tg3_mem_tx_acquire(tp) || tg3_mem_rx_acquire(tp))
  goto err_out;

 return 0;

err_out:
 tg3_free_consistent(tp);
 return -ENOMEM;
}
