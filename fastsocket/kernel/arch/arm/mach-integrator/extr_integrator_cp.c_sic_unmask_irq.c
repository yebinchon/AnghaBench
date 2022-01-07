
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INTCP_VA_SIC_BASE ;
 scalar_t__ IRQ_ENABLE_SET ;
 scalar_t__ IRQ_SIC_START ;
 int sic_writel (int,scalar_t__) ;

__attribute__((used)) static void sic_unmask_irq(unsigned int irq)
{
 irq -= IRQ_SIC_START;
 sic_writel(1 << irq, INTCP_VA_SIC_BASE + IRQ_ENABLE_SET);
}
