
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gem {scalar_t__ regs; } ;


 scalar_t__ MAC_RXCFG ;
 int MAC_RXCFG_ENAB ;
 scalar_t__ MAC_TXCFG ;
 int MAC_TXCFG_ENAB ;
 scalar_t__ RXDMA_CFG ;
 int RXDMA_CFG_ENABLE ;
 scalar_t__ TXDMA_CFG ;
 int TXDMA_CFG_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gem_stop_dma(struct gem *gp)
{
 u32 val;


 val = readl(gp->regs + TXDMA_CFG);
 writel(val & ~TXDMA_CFG_ENABLE, gp->regs + TXDMA_CFG);
 val = readl(gp->regs + RXDMA_CFG);
 writel(val & ~RXDMA_CFG_ENABLE, gp->regs + RXDMA_CFG);
 val = readl(gp->regs + MAC_TXCFG);
 writel(val & ~MAC_TXCFG_ENAB, gp->regs + MAC_TXCFG);
 val = readl(gp->regs + MAC_RXCFG);
 writel(val & ~MAC_RXCFG_ENAB, gp->regs + MAC_RXCFG);

 (void) readl(gp->regs + MAC_RXCFG);


}
