
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frv_dma_channel {int flags; unsigned long ioaddr; } ;


 int CCTR ;
 int CSTR ;
 unsigned long DMAC_CCTRx_ACT ;
 unsigned long DMAC_CSTRx_BUSY ;
 unsigned long DMAC_CSTRx_FED ;
 int FRV_DMA_FLAGS_INUSE ;
 int FRV_DMA_FLAGS_PAUSED ;
 int FRV_DMA_NCHANS ;
 unsigned long __get_DMAC (unsigned long,int ) ;
 int __set_DMAC (unsigned long,int ,unsigned long) ;
 int frv_clear_dma_inprogress (int) ;
 struct frv_dma_channel* frv_dma_channels ;
 int frv_dma_channels_lock ;
 int write_lock (int *) ;

void frv_dma_pause_all(void)
{
 struct frv_dma_channel *channel;
 unsigned long ioaddr;
 unsigned long cstr, cctr;
 int dma;

 write_lock(&frv_dma_channels_lock);

 for (dma = FRV_DMA_NCHANS - 1; dma >= 0; dma--) {
  channel = &frv_dma_channels[dma];

  if (!(channel->flags & FRV_DMA_FLAGS_INUSE))
   continue;

  ioaddr = channel->ioaddr;
  cctr = __get_DMAC(ioaddr, CCTR);
  if (cctr & DMAC_CCTRx_ACT) {
   cctr &= ~DMAC_CCTRx_ACT;
   __set_DMAC(ioaddr, CCTR, cctr);

   do {
    cstr = __get_DMAC(ioaddr, CSTR);
   } while (cstr & DMAC_CSTRx_BUSY);

   if (cstr & DMAC_CSTRx_FED)
    channel->flags |= FRV_DMA_FLAGS_PAUSED;
   frv_clear_dma_inprogress(dma);
  }
 }

}
