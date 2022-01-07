
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int INTMR1 ;
 int clps_readl (int ) ;
 int clps_writel (int,int ) ;

__attribute__((used)) static void int1_mask(unsigned int irq)
{
 u32 intmr1;

 intmr1 = clps_readl(INTMR1);
 intmr1 &= ~(1 << irq);
 clps_writel(intmr1, INTMR1);
}
