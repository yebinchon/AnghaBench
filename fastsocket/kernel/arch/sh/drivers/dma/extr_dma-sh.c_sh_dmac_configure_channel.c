
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {size_t chan; int flags; } ;


 scalar_t__ CHCR ;
 unsigned long CHCR_IE ;
 int DMA_CONFIGURED ;
 int DMA_TEI_CAPABLE ;
 unsigned long RS_DUAL ;
 int ctrl_outl (unsigned long,scalar_t__) ;
 scalar_t__* dma_base_addr ;

__attribute__((used)) static int
sh_dmac_configure_channel(struct dma_channel *chan, unsigned long chcr)
{
 if (!chcr)
  chcr = RS_DUAL | CHCR_IE;

 if (chcr & CHCR_IE) {
  chcr &= ~CHCR_IE;
  chan->flags |= DMA_TEI_CAPABLE;
 } else {
  chan->flags &= ~DMA_TEI_CAPABLE;
 }

 ctrl_outl(chcr, (dma_base_addr[chan->chan] + CHCR));

 chan->flags |= DMA_CONFIGURED;
 return 0;
}
