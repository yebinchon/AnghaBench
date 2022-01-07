
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_tx_ring_info {int dummy; } ;
struct tg3_napi {int tx_ring; int tx_desc_mapping; int tx_buffers; } ;
struct tg3 {int txq_cnt; TYPE_1__* pdev; struct tg3_napi* napi; } ;
struct TYPE_2__ {int dev; } ;


 int ENABLE_TSS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TG3_TX_RING_BYTES ;
 int TG3_TX_RING_SIZE ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int kzalloc (int,int ) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_mem_tx_release (struct tg3*) ;

__attribute__((used)) static int tg3_mem_tx_acquire(struct tg3 *tp)
{
 int i;
 struct tg3_napi *tnapi = &tp->napi[0];




 if (tg3_flag(tp, ENABLE_TSS))
  tnapi++;

 for (i = 0; i < tp->txq_cnt; i++, tnapi++) {
  tnapi->tx_buffers = kzalloc(sizeof(struct tg3_tx_ring_info) *
         TG3_TX_RING_SIZE, GFP_KERNEL);
  if (!tnapi->tx_buffers)
   goto err_out;

  tnapi->tx_ring = dma_alloc_coherent(&tp->pdev->dev,
          TG3_TX_RING_BYTES,
          &tnapi->tx_desc_mapping,
          GFP_KERNEL);
  if (!tnapi->tx_ring)
   goto err_out;
 }

 return 0;

err_out:
 tg3_mem_tx_release(tp);
 return -ENOMEM;
}
