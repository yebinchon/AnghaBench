
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_mcbsp {int dma_rx_lch; int rx_dma_completion; int io_base; int dev; } ;


 int OMAP_MCBSP_READ (int ,int ) ;
 int SPCR2 ;
 int complete (int *) ;
 int dev_dbg (int ,char*,int ) ;
 int omap_free_dma (int) ;

__attribute__((used)) static void omap_mcbsp_rx_dma_callback(int lch, u16 ch_status, void *data)
{
 struct omap_mcbsp *mcbsp_dma_rx = data;

 dev_dbg(mcbsp_dma_rx->dev, "RX DMA callback : 0x%x\n",
  OMAP_MCBSP_READ(mcbsp_dma_rx->io_base, SPCR2));


 omap_free_dma(mcbsp_dma_rx->dma_rx_lch);
 mcbsp_dma_rx->dma_rx_lch = -1;

 complete(&mcbsp_dma_rx->rx_dma_completion);
}
