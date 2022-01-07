
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCR (int) ;
 int OMAP_DMA_CCR_EN ;
 int dma_read (int ) ;

int omap_get_dma_active_status(int lch)
{
 return (dma_read(CCR(lch)) & OMAP_DMA_CCR_EN) != 0;
}
