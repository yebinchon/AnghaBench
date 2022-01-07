
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frv_dma_channel {int flags; unsigned long ioaddr; } ;


 int CCTR ;
 int CSTR ;
 unsigned long DMAC_CCTRx_ACT ;
 unsigned long DMAC_CSTRx_FED ;
 unsigned long DMAC_CSTRx_INT ;
 int FRV_DMA_FLAGS_PAUSED ;
 int FRV_DMA_NCHANS ;
 unsigned long __get_DMAC (unsigned long,int ) ;
 int __set_DMAC (unsigned long,int ,unsigned long) ;
 struct frv_dma_channel* frv_dma_channels ;
 int frv_dma_channels_lock ;
 int frv_set_dma_inprogress (int) ;
 int write_unlock (int *) ;

void frv_dma_resume_all(void)
{
 struct frv_dma_channel *channel;
 unsigned long ioaddr;
 unsigned long cstr, cctr;
 int dma;

 for (dma = FRV_DMA_NCHANS - 1; dma >= 0; dma--) {
  channel = &frv_dma_channels[dma];

  if (!(channel->flags & FRV_DMA_FLAGS_PAUSED))
   continue;

  ioaddr = channel->ioaddr;
  cstr = __get_DMAC(ioaddr, CSTR);
  cstr &= ~(DMAC_CSTRx_FED | DMAC_CSTRx_INT);
  __set_DMAC(ioaddr, CSTR, cstr);

  cctr = __get_DMAC(ioaddr, CCTR);
  cctr |= DMAC_CCTRx_ACT;
  __set_DMAC(ioaddr, CCTR, cctr);

  channel->flags &= ~FRV_DMA_FLAGS_PAUSED;
  frv_set_dma_inprogress(dma);
 }

 write_unlock(&frv_dma_channels_lock);

}
