
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ DMA_CONTROL ;
 int DMA_CONTROL_TTC_128 ;
 int DMA_CONTROL_TTC_32 ;
 int DMA_CONTROL_TTC_64 ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mac100_dma_operation_mode(unsigned long ioaddr, int txmode,
          int rxmode)
{
 u32 csr6 = readl(ioaddr + DMA_CONTROL);

 if (txmode <= 32)
  csr6 |= DMA_CONTROL_TTC_32;
 else if (txmode <= 64)
  csr6 |= DMA_CONTROL_TTC_64;
 else
  csr6 |= DMA_CONTROL_TTC_128;

 writel(csr6, ioaddr + DMA_CONTROL);

 return;
}
