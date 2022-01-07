
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {int lock; scalar_t__* channel_allocated; scalar_t__ mite_io_addr; } ;
struct mite_channel {size_t channel; int * ring; struct mite_struct* mite; } ;


 int CHCR_CLR_CONT_RB_IE ;
 int CHCR_CLR_DMA_IE ;
 int CHCR_CLR_DONE_IE ;
 int CHCR_CLR_DRDY_IE ;
 int CHCR_CLR_LC_IE ;
 int CHCR_CLR_LINKP_IE ;
 int CHCR_CLR_MRDY_IE ;
 int CHCR_CLR_SAR_IE ;
 scalar_t__ MITE_CHCR (size_t) ;
 int mite_dma_disarm (struct mite_channel*) ;
 int mite_dma_reset (struct mite_channel*) ;
 int mmiowb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

void mite_release_channel(struct mite_channel *mite_chan)
{
 struct mite_struct *mite = mite_chan->mite;
 unsigned long flags;


 spin_lock_irqsave(&mite->lock, flags);
 if (mite->channel_allocated[mite_chan->channel]) {
  mite_dma_disarm(mite_chan);
  mite_dma_reset(mite_chan);


  writel(CHCR_CLR_DMA_IE | CHCR_CLR_LINKP_IE |
         CHCR_CLR_SAR_IE | CHCR_CLR_DONE_IE |
         CHCR_CLR_MRDY_IE | CHCR_CLR_DRDY_IE |
         CHCR_CLR_LC_IE | CHCR_CLR_CONT_RB_IE,
         mite->mite_io_addr + MITE_CHCR(mite_chan->channel));
  mite->channel_allocated[mite_chan->channel] = 0;
  mite_chan->ring = ((void*)0);
  mmiowb();
 }
 spin_unlock_irqrestore(&mite->lock, flags);
}
