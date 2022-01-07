
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {int lock; scalar_t__ mite_io_addr; } ;
struct mite_channel {int channel; scalar_t__ done; struct mite_struct* mite; } ;


 int CHOR_START ;
 int MDPRINTK (char*,int ) ;
 scalar_t__ MITE_CHOR (int ) ;
 int channel ;
 int mmiowb () ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

void mite_dma_arm(struct mite_channel *mite_chan)
{
 struct mite_struct *mite = mite_chan->mite;
 int chor;
 unsigned long flags;

 MDPRINTK("mite_dma_arm ch%i\n", channel);


 smp_mb();

 chor = CHOR_START;
 spin_lock_irqsave(&mite->lock, flags);
 mite_chan->done = 0;
 writel(chor, mite->mite_io_addr + MITE_CHOR(mite_chan->channel));
 mmiowb();
 spin_unlock_irqrestore(&mite->lock, flags);

}
