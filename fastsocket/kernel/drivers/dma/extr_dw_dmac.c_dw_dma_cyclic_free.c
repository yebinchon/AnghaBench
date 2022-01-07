
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
struct dw_dma_chan {int mask; int flags; int lock; TYPE_1__ chan; struct dw_cyclic_desc* cdesc; } ;
struct dw_dma {int dummy; } ;
struct dw_cyclic_desc {int periods; struct dw_cyclic_desc* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int XFER; int ERROR; int BLOCK; } ;


 int CH_EN ;
 TYPE_2__ CLEAR ;
 int DW_DMA_IS_CYCLIC ;
 int chan2dev (TYPE_1__*) ;
 int channel_clear_bit (struct dw_dma*,int ,int) ;
 int clear_bit (int ,int *) ;
 int cpu_relax () ;
 int dev_dbg (int ,char*) ;
 int dma_readl (struct dw_dma*,int ) ;
 int dma_writel (struct dw_dma*,int ,int) ;
 int dwc_desc_put (struct dw_dma_chan*,struct dw_cyclic_desc) ;
 int kfree (struct dw_cyclic_desc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct dw_dma* to_dw_dma (int ) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

void dw_dma_cyclic_free(struct dma_chan *chan)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);
 struct dw_cyclic_desc *cdesc = dwc->cdesc;
 int i;

 dev_dbg(chan2dev(&dwc->chan), "cyclic free\n");

 if (!cdesc)
  return;

 spin_lock_bh(&dwc->lock);

 channel_clear_bit(dw, CH_EN, dwc->mask);
 while (dma_readl(dw, CH_EN) & dwc->mask)
  cpu_relax();

 dma_writel(dw, CLEAR.BLOCK, dwc->mask);
 dma_writel(dw, CLEAR.ERROR, dwc->mask);
 dma_writel(dw, CLEAR.XFER, dwc->mask);

 spin_unlock_bh(&dwc->lock);

 for (i = 0; i < cdesc->periods; i++)
  dwc_desc_put(dwc, cdesc->desc[i]);

 kfree(cdesc->desc);
 kfree(cdesc);

 clear_bit(DW_DMA_IS_CYCLIC, &dwc->flags);
}
