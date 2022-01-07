
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ DMA_BUS_MODE ;
 int DMA_BUS_MODE_4PBL ;
 int DMA_BUS_MODE_DA ;
 int DMA_BUS_MODE_PBL_SHIFT ;
 int DMA_BUS_MODE_RPBL_SHIFT ;
 int DMA_BUS_MODE_SFT_RESET ;
 int DMA_INTR_DEFAULT_MASK ;
 scalar_t__ DMA_INTR_ENA ;
 scalar_t__ DMA_RCV_BASE_ADDR ;
 scalar_t__ DMA_TX_BASE_ADDR ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int gmac_dma_init(unsigned long ioaddr, int pbl, u32 dma_tx, u32 dma_rx)
{
 u32 value = readl(ioaddr + DMA_BUS_MODE);

 value |= DMA_BUS_MODE_SFT_RESET;
 writel(value, ioaddr + DMA_BUS_MODE);
 do {} while ((readl(ioaddr + DMA_BUS_MODE) & DMA_BUS_MODE_SFT_RESET));

 value = DMA_BUS_MODE_4PBL |
     ((pbl << DMA_BUS_MODE_PBL_SHIFT) |
      (pbl << DMA_BUS_MODE_RPBL_SHIFT));




 writel(value, ioaddr + DMA_BUS_MODE);


 writel(DMA_INTR_DEFAULT_MASK, ioaddr + DMA_INTR_ENA);



 writel(dma_tx, ioaddr + DMA_TX_BASE_ADDR);
 writel(dma_rx, ioaddr + DMA_RCV_BASE_ADDR);

 return 0;
}
