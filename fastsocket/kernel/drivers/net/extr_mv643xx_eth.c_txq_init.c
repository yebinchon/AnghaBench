
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tx_queue {int index; int tx_ring_size; int tx_desc_area_size; int tx_skb; scalar_t__ tx_desc_dma; int * tx_desc_area; scalar_t__ tx_used_desc; scalar_t__ tx_curr_desc; scalar_t__ tx_desc_count; } ;
struct tx_desc {scalar_t__ next_desc_ptr; scalar_t__ cmd_sts; } ;
struct mv643xx_eth_private {int tx_ring_size; int tx_desc_sram_size; TYPE_1__* dev; scalar_t__ tx_desc_sram_addr; struct tx_queue* txq; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int dev_printk (int ,TYPE_2__*,char*,int) ;
 int * dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int * ioremap (scalar_t__,int) ;
 int memset (int *,int ,int) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int txq_init(struct mv643xx_eth_private *mp, int index)
{
 struct tx_queue *txq = mp->txq + index;
 struct tx_desc *tx_desc;
 int size;
 int i;

 txq->index = index;

 txq->tx_ring_size = mp->tx_ring_size;

 txq->tx_desc_count = 0;
 txq->tx_curr_desc = 0;
 txq->tx_used_desc = 0;

 size = txq->tx_ring_size * sizeof(struct tx_desc);

 if (index == 0 && size <= mp->tx_desc_sram_size) {
  txq->tx_desc_area = ioremap(mp->tx_desc_sram_addr,
      mp->tx_desc_sram_size);
  txq->tx_desc_dma = mp->tx_desc_sram_addr;
 } else {
  txq->tx_desc_area = dma_alloc_coherent(mp->dev->dev.parent,
             size, &txq->tx_desc_dma,
             GFP_KERNEL);
 }

 if (txq->tx_desc_area == ((void*)0)) {
  dev_printk(KERN_ERR, &mp->dev->dev,
      "can't allocate tx ring (%d bytes)\n", size);
  return -ENOMEM;
 }
 memset(txq->tx_desc_area, 0, size);

 txq->tx_desc_area_size = size;

 tx_desc = (struct tx_desc *)txq->tx_desc_area;
 for (i = 0; i < txq->tx_ring_size; i++) {
  struct tx_desc *txd = tx_desc + i;
  int nexti;

  nexti = i + 1;
  if (nexti == txq->tx_ring_size)
   nexti = 0;

  txd->cmd_sts = 0;
  txd->next_desc_ptr = txq->tx_desc_dma +
     nexti * sizeof(struct tx_desc);
 }

 skb_queue_head_init(&txq->tx_skb);

 return 0;
}
