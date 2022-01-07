
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AU1000_INTC1_INT_BASE ;
 int IC1_FALLINGCLR ;
 int IC1_RISINGCLR ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static void au1x_ic1_ack(unsigned int irq_nr)
{
 unsigned int bit = irq_nr - AU1000_INTC1_INT_BASE;





 au_writel(1 << bit, IC1_FALLINGCLR);
 au_writel(1 << bit, IC1_RISINGCLR);
 au_sync();
}
