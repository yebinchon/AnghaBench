
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AU1000_GPIO_15 ;
 unsigned int AU1000_INTC1_INT_BASE ;
 int IC1_MASKSET ;
 int IC1_WAKESET ;
 int PB1000_MDR ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static void au1x_ic1_unmask(unsigned int irq_nr)
{
 unsigned int bit = irq_nr - AU1000_INTC1_INT_BASE;
 au_writel(1 << bit, IC1_MASKSET);
 au_writel(1 << bit, IC1_WAKESET);
 au_sync();
}
