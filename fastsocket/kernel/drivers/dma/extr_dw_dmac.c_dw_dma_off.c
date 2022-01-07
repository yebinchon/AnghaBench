
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_dma {int all_chan_mask; } ;
struct TYPE_2__ {int ERROR; int DST_TRAN; int SRC_TRAN; int BLOCK; int XFER; } ;


 int CFG ;
 int DW_CFG_DMA_EN ;
 TYPE_1__ MASK ;
 int channel_clear_bit (struct dw_dma*,int ,int ) ;
 int cpu_relax () ;
 int dma_readl (struct dw_dma*,int ) ;
 int dma_writel (struct dw_dma*,int ,int ) ;

__attribute__((used)) static void dw_dma_off(struct dw_dma *dw)
{
 dma_writel(dw, CFG, 0);

 channel_clear_bit(dw, MASK.XFER, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.BLOCK, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.SRC_TRAN, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.DST_TRAN, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.ERROR, dw->all_chan_mask);

 while (dma_readl(dw, CFG) & DW_CFG_DMA_EN)
  cpu_relax();
}
