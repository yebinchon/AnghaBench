
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {int lock; scalar_t__ mite_io_addr; } ;
struct mite_channel {int done; int channel; struct mite_struct* mite; } ;


 int CHOR_CLRDONE ;
 unsigned int CHSR_DONE ;
 scalar_t__ MITE_CHOR (int ) ;
 scalar_t__ MITE_CHSR (int ) ;
 int mmiowb () ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

unsigned mite_get_status(struct mite_channel *mite_chan)
{
 struct mite_struct *mite = mite_chan->mite;
 unsigned status;
 unsigned long flags;

 spin_lock_irqsave(&mite->lock, flags);
 status = readl(mite->mite_io_addr + MITE_CHSR(mite_chan->channel));
 if (status & CHSR_DONE) {
  mite_chan->done = 1;
  writel(CHOR_CLRDONE,
         mite->mite_io_addr + MITE_CHOR(mite_chan->channel));
 }
 mmiowb();
 spin_unlock_irqrestore(&mite->lock, flags);
 return status;
}
