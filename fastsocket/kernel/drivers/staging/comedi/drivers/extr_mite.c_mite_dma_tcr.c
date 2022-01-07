
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {scalar_t__ mite_io_addr; } ;
struct mite_channel {int channel; struct mite_struct* mite; } ;


 int MDPRINTK (char*,int ,int,int) ;
 scalar_t__ MITE_LKAR (int ) ;
 scalar_t__ MITE_TCR (int ) ;
 int readl (scalar_t__) ;

unsigned mite_dma_tcr(struct mite_channel *mite_chan)
{
 struct mite_struct *mite = mite_chan->mite;
 int tcr;
 int lkar;

 lkar = readl(mite->mite_io_addr + MITE_LKAR(mite_chan->channel));
 tcr = readl(mite->mite_io_addr + MITE_TCR(mite_chan->channel));
 MDPRINTK("mite_dma_tcr ch%i, lkar=0x%08x tcr=%d\n", mite_chan->channel,
   lkar, tcr);

 return tcr;
}
