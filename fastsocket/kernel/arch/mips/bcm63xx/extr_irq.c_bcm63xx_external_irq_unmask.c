
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXTIRQ_CFG_MASK (unsigned int) ;
 scalar_t__ IRQ_EXT_BASE ;
 int PERF_EXTIRQ_CFG_REG ;
 int bcm_perf_readl (int ) ;
 int bcm_perf_writel (int ,int ) ;

__attribute__((used)) static void bcm63xx_external_irq_unmask(unsigned int irq)
{
 u32 reg;

 irq -= IRQ_EXT_BASE;
 reg = bcm_perf_readl(PERF_EXTIRQ_CFG_REG);
 reg |= EXTIRQ_CFG_MASK(irq);
 bcm_perf_writel(reg, PERF_EXTIRQ_CFG_REG);
}
