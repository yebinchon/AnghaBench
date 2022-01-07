
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ebus_dma_info {scalar_t__ regs; } ;


 scalar_t__ EBDMA_CSR ;
 int EBDMA_CSR_CYC_PEND ;
 int EBDMA_CSR_DRAIN ;
 int EBDMA_CSR_RESET ;
 int EBUS_DMA_RESET_TIMEOUT ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void __ebus_dma_reset(struct ebus_dma_info *p, int no_drain)
{
 int i;
 u32 val = 0;

 writel(EBDMA_CSR_RESET, p->regs + EBDMA_CSR);
 udelay(1);

 if (no_drain)
  return;

 for (i = EBUS_DMA_RESET_TIMEOUT; i > 0; i--) {
  val = readl(p->regs + EBDMA_CSR);

  if (!(val & (EBDMA_CSR_DRAIN | EBDMA_CSR_CYC_PEND)))
   break;
  udelay(10);
 }
}
