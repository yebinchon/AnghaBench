
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AU1000_INTC0_INT_BASE ;
 int IC0_MASKSET ;
 int IC0_WAKESET ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static void au1x_ic0_unmask(unsigned int irq_nr)
{
 unsigned int bit = irq_nr - AU1000_INTC0_INT_BASE;
 au_writel(1 << bit, IC0_MASKSET);
 au_writel(1 << bit, IC0_WAKESET);
 au_sync();
}
