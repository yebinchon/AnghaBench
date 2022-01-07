
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {scalar_t__ mite_io_addr; } ;
struct mite_channel {int channel; struct mite_struct* mite; } ;


 unsigned int CHOR_ABORT ;
 scalar_t__ MITE_CHOR (int ) ;
 int writel (unsigned int,scalar_t__) ;

void mite_dma_disarm(struct mite_channel *mite_chan)
{
 struct mite_struct *mite = mite_chan->mite;
 unsigned chor;


 chor = CHOR_ABORT;
 writel(chor, mite->mite_io_addr + MITE_CHOR(mite_chan->channel));
}
