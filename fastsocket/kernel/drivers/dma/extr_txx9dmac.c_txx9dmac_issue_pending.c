
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct txx9dmac_desc {TYPE_1__ txd; } ;
struct txx9dmac_chan {int lock; int active_list; int queue; } ;
struct dma_chan {int dummy; } ;


 int DMA_PREP_INTERRUPT ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct txx9dmac_chan* to_txx9dmac_chan (struct dma_chan*) ;
 scalar_t__ txx9_dma_have_SMPCHN () ;
 int txx9dmac_chain_dynamic (struct txx9dmac_chan*,struct txx9dmac_desc*) ;
 scalar_t__ txx9dmac_chan_INTENT (struct txx9dmac_chan*) ;
 int txx9dmac_dequeue (struct txx9dmac_chan*,int *) ;
 int txx9dmac_dostart (struct txx9dmac_chan*,int ) ;
 int txx9dmac_first_active (struct txx9dmac_chan*) ;
 struct txx9dmac_desc* txx9dmac_last_active (struct txx9dmac_chan*) ;
 int txx9dmac_scan_descriptors (struct txx9dmac_chan*) ;

__attribute__((used)) static void txx9dmac_issue_pending(struct dma_chan *chan)
{
 struct txx9dmac_chan *dc = to_txx9dmac_chan(chan);

 spin_lock_bh(&dc->lock);

 if (!list_empty(&dc->active_list))
  txx9dmac_scan_descriptors(dc);
 if (!list_empty(&dc->queue)) {
  if (list_empty(&dc->active_list)) {
   txx9dmac_dequeue(dc, &dc->active_list);
   txx9dmac_dostart(dc, txx9dmac_first_active(dc));
  } else if (txx9_dma_have_SMPCHN()) {
   struct txx9dmac_desc *prev = txx9dmac_last_active(dc);

   if (!(prev->txd.flags & DMA_PREP_INTERRUPT) ||
       txx9dmac_chan_INTENT(dc))
    txx9dmac_chain_dynamic(dc, prev);
  }
 }

 spin_unlock_bh(&dc->lock);
}
