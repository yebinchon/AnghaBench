
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AU1000_INTC1_INT_BASE ;
 int IC1_MASKCLR ;
 int IC1_WAKECLR ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static void au1x_ic1_mask(unsigned int irq_nr)
{
 unsigned int bit = irq_nr - AU1000_INTC1_INT_BASE;
 au_writel(1 << bit, IC1_MASKCLR);
 au_writel(1 << bit, IC1_WAKECLR);
 au_sync();
}
