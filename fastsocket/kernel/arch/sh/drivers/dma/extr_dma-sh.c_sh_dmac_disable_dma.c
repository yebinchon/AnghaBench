
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_channel {int flags; size_t chan; } ;


 scalar_t__ CHCR ;
 int CHCR_DE ;
 int CHCR_IE ;
 int CHCR_TE ;
 int DMA_TEI_CAPABLE ;
 int ctrl_inl (scalar_t__) ;
 int ctrl_outl (int,scalar_t__) ;
 int disable_irq (int) ;
 scalar_t__* dma_base_addr ;
 int get_dmte_irq (size_t) ;

__attribute__((used)) static void sh_dmac_disable_dma(struct dma_channel *chan)
{
 int irq;
 u32 chcr;

 if (chan->flags & DMA_TEI_CAPABLE) {
  irq = get_dmte_irq(chan->chan);
  disable_irq(irq);
 }

 chcr = ctrl_inl(dma_base_addr[chan->chan] + CHCR);
 chcr &= ~(CHCR_DE | CHCR_TE | CHCR_IE);
 ctrl_outl(chcr, (dma_base_addr[chan->chan] + CHCR));
}
