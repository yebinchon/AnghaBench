
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AU1000_INTC0_INT_BASE ;
 int IC0_FALLINGCLR ;
 int IC0_MASKCLR ;
 int IC0_RISINGCLR ;
 int IC0_WAKECLR ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static void au1x_ic0_maskack(unsigned int irq_nr)
{
 unsigned int bit = irq_nr - AU1000_INTC0_INT_BASE;

 au_writel(1 << bit, IC0_WAKECLR);
 au_writel(1 << bit, IC0_MASKCLR);
 au_writel(1 << bit, IC0_RISINGCLR);
 au_writel(1 << bit, IC0_FALLINGCLR);
 au_sync();
}
