
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DMA_BASE ;
 scalar_t__ DMA_BLR (int) ;
 int __raw_writel (unsigned int,scalar_t__) ;

void imx_dma_config_burstlen(int channel, unsigned int burstlen)
{
 __raw_writel(burstlen, DMA_BASE + DMA_BLR(channel));
}
