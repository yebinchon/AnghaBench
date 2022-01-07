
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int null; int int_en; int compl_write; } ;
struct ioat_dma_descriptor {scalar_t__ next; scalar_t__ dst_addr; scalar_t__ src_addr; int size; TYPE_1__ ctl_f; scalar_t__ ctl; } ;
struct ioat_chan_common {int dummy; } ;
struct ioat_dma_chan {int desc_lock; int used_desc; struct ioat_chan_common base; } ;
struct TYPE_4__ {int phys; } ;
struct ioat_desc_sw {TYPE_2__ txd; int node; struct ioat_dma_descriptor* hw; } ;


 int NULL_DESC_BUFFER_SIZE ;
 int async_tx_ack (TYPE_2__*) ;
 int dev_err (int ,char*) ;
 int dump_desc_dbg (struct ioat_dma_chan*,struct ioat_desc_sw*) ;
 struct ioat_desc_sw* ioat1_dma_get_next_descriptor (struct ioat_dma_chan*) ;
 int ioat_set_chainaddr (struct ioat_dma_chan*,int ) ;
 int ioat_start (struct ioat_chan_common*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int to_dev (struct ioat_chan_common*) ;

__attribute__((used)) static void ioat1_dma_start_null_desc(struct ioat_dma_chan *ioat)
{
 struct ioat_chan_common *chan = &ioat->base;
 struct ioat_desc_sw *desc;
 struct ioat_dma_descriptor *hw;

 spin_lock_bh(&ioat->desc_lock);

 desc = ioat1_dma_get_next_descriptor(ioat);

 if (!desc) {
  dev_err(to_dev(chan),
   "Unable to start null desc - get next desc failed\n");
  spin_unlock_bh(&ioat->desc_lock);
  return;
 }

 hw = desc->hw;
 hw->ctl = 0;
 hw->ctl_f.null = 1;
 hw->ctl_f.int_en = 1;
 hw->ctl_f.compl_write = 1;

 hw->size = NULL_DESC_BUFFER_SIZE;
 hw->src_addr = 0;
 hw->dst_addr = 0;
 async_tx_ack(&desc->txd);
 hw->next = 0;
 list_add_tail(&desc->node, &ioat->used_desc);
 dump_desc_dbg(ioat, desc);

 ioat_set_chainaddr(ioat, desc->txd.phys);
 ioat_start(chan);
 spin_unlock_bh(&ioat->desc_lock);
}
