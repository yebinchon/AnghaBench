
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ DMA_CONTROL ;
 int DMA_CONTROL_FTF ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gmac_flush_tx_fifo(unsigned long ioaddr)
{
 u32 csr6 = readl(ioaddr + DMA_CONTROL);
 writel((csr6 | DMA_CONTROL_FTF), ioaddr + DMA_CONTROL);

 do {} while ((readl(ioaddr + DMA_CONTROL) & DMA_CONTROL_FTF));
}
