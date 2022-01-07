
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lance_private {int burst_sizes; scalar_t__ dregs; scalar_t__ tpe; } ;


 int DMA_BURST32 ;
 scalar_t__ DMA_CSR ;
 int DMA_DSBL_RD_DRN ;
 int DMA_DSBL_WR_INV ;
 int DMA_EN_ENETAUI ;
 int DMA_E_BURST16 ;
 int DMA_E_BURST32 ;
 int DMA_E_BURSTS ;
 int DMA_FIFO_INV ;
 int DMA_FIFO_ISDRAIN ;
 int DMA_HNDL_ERROR ;
 int barrier () ;
 int sbus_readl (scalar_t__) ;
 int sbus_writel (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void init_restart_ledma(struct lance_private *lp)
{
 u32 csr = sbus_readl(lp->dregs + DMA_CSR);

 if (!(csr & DMA_HNDL_ERROR)) {

  while (sbus_readl(lp->dregs + DMA_CSR) & DMA_FIFO_ISDRAIN)
   barrier();
 }

 csr = sbus_readl(lp->dregs + DMA_CSR);
 csr &= ~DMA_E_BURSTS;
 if (lp->burst_sizes & DMA_BURST32)
  csr |= DMA_E_BURST32;
 else
  csr |= DMA_E_BURST16;

 csr |= (DMA_DSBL_RD_DRN | DMA_DSBL_WR_INV | DMA_FIFO_INV);

 if (lp->tpe)
  csr |= DMA_EN_ENETAUI;
 else
  csr &= ~DMA_EN_ENETAUI;
 udelay(20);
 sbus_writel(csr, lp->dregs + DMA_CSR);
 udelay(200);
}
