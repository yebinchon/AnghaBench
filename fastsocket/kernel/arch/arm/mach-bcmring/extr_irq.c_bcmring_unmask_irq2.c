
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INTCHW_INTENABLE ;
 unsigned int IRQ_SINTC_START ;
 scalar_t__ MM_IO_BASE_SINTC ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcmring_unmask_irq2(unsigned int irq)
{
 writel(1 << (irq - IRQ_SINTC_START),
        MM_IO_BASE_SINTC + INTCHW_INTENABLE);
}
