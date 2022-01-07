
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INTCHW_INTENCLEAR ;
 unsigned int IRQ_INTC1_START ;
 scalar_t__ MM_IO_BASE_INTC1 ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcmring_mask_irq1(unsigned int irq)
{
 writel(1 << (irq - IRQ_INTC1_START),
        MM_IO_BASE_INTC1 + INTCHW_INTENCLEAR);
}
