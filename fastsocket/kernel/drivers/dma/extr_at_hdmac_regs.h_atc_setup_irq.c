
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chan_id; int device; } ;
struct at_dma_chan {TYPE_1__ chan_common; } ;
struct at_dma {int dummy; } ;


 int AT_DMA_CBTC (int ) ;
 int AT_DMA_ERR (int ) ;
 int EBCIDR ;
 int EBCIER ;
 int dma_writel (struct at_dma*,int ,int) ;
 struct at_dma* to_at_dma (int ) ;

__attribute__((used)) static void atc_setup_irq(struct at_dma_chan *atchan, int on)
{
 struct at_dma *atdma = to_at_dma(atchan->chan_common.device);
 u32 ebci;


 ebci = AT_DMA_CBTC(atchan->chan_common.chan_id)
  | AT_DMA_ERR(atchan->chan_common.chan_id);
 if (on)
  dma_writel(atdma, EBCIER, ebci);
 else
  dma_writel(atdma, EBCIDR, ebci);
}
