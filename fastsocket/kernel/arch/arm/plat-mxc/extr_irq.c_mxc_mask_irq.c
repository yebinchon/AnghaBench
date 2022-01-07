
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AVIC_INTDISNUM ;
 int __raw_writel (unsigned int,scalar_t__) ;
 scalar_t__ avic_base ;

__attribute__((used)) static void mxc_mask_irq(unsigned int irq)
{
 __raw_writel(irq, avic_base + AVIC_INTDISNUM);
}
