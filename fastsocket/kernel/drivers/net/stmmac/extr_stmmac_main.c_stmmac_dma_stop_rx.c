
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ DMA_CONTROL ;
 int DMA_CONTROL_SR ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void stmmac_dma_stop_rx(unsigned long ioaddr)
{
 u32 value = readl(ioaddr + DMA_CONTROL);
 value &= ~DMA_CONTROL_SR;
 writel(value, ioaddr + DMA_CONTROL);

 return;
}
