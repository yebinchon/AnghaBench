
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_napi {int * hw_status; int status_mapping; } ;
struct tg3_hw_stats {int dummy; } ;
struct tg3 {int irq_cnt; int * hw_stats; int stats_mapping; TYPE_1__* pdev; struct tg3_napi* napi; } ;
struct TYPE_2__ {int dev; } ;


 int TG3_HW_STATUS_SIZE ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int tg3_mem_rx_release (struct tg3*) ;
 int tg3_mem_tx_release (struct tg3*) ;

__attribute__((used)) static void tg3_free_consistent(struct tg3 *tp)
{
 int i;

 for (i = 0; i < tp->irq_cnt; i++) {
  struct tg3_napi *tnapi = &tp->napi[i];

  if (tnapi->hw_status) {
   dma_free_coherent(&tp->pdev->dev, TG3_HW_STATUS_SIZE,
       tnapi->hw_status,
       tnapi->status_mapping);
   tnapi->hw_status = ((void*)0);
  }
 }

 tg3_mem_rx_release(tp);
 tg3_mem_tx_release(tp);

 if (tp->hw_stats) {
  dma_free_coherent(&tp->pdev->dev, sizeof(struct tg3_hw_stats),
      tp->hw_stats, tp->stats_mapping);
  tp->hw_stats = ((void*)0);
 }
}
