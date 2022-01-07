
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQ_SIC_START ;
 scalar_t__ SIC_IRQ_ENABLE_CLEAR ;
 scalar_t__ VA_SIC_BASE ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sic_mask_irq(unsigned int irq)
{
 irq -= IRQ_SIC_START;
 writel(1 << irq, VA_SIC_BASE + SIC_IRQ_ENABLE_CLEAR);
}
