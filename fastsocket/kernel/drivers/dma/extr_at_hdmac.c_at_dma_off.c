
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_dma {int all_chan_mask; } ;


 int CHSR ;
 int EBCIDR ;
 int EN ;
 int cpu_relax () ;
 int dma_readl (struct at_dma*,int ) ;
 int dma_writel (struct at_dma*,int ,long) ;

__attribute__((used)) static void at_dma_off(struct at_dma *atdma)
{
 dma_writel(atdma, EN, 0);


 dma_writel(atdma, EBCIDR, -1L);


 while (dma_readl(atdma, CHSR) & atdma->all_chan_mask)
  cpu_relax();
}
