
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct dw_dma_chan {int mask; int lock; TYPE_1__ chan; } ;
struct dw_dma {int dummy; } ;
struct dma_chan {int dummy; } ;


 int CH_EN ;
 int channel_clear_bit (struct dw_dma*,int ,int) ;
 int cpu_relax () ;
 int dma_readl (struct dw_dma*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct dw_dma* to_dw_dma (int ) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

void dw_dma_cyclic_stop(struct dma_chan *chan)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);

 spin_lock(&dwc->lock);

 channel_clear_bit(dw, CH_EN, dwc->mask);
 while (dma_readl(dw, CH_EN) & dwc->mask)
  cpu_relax();

 spin_unlock(&dwc->lock);
}
