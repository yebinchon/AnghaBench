
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ IRQ_INTERNAL_BASE ;
 int PERF_IRQMASK_REG ;
 int bcm_perf_readl (int ) ;
 int bcm_perf_writel (int,int ) ;

__attribute__((used)) static inline void bcm63xx_internal_irq_mask(unsigned int irq)
{
 u32 mask;

 irq -= IRQ_INTERNAL_BASE;
 mask = bcm_perf_readl(PERF_IRQMASK_REG);
 mask &= ~(1 << irq);
 bcm_perf_writel(mask, PERF_IRQMASK_REG);
}
