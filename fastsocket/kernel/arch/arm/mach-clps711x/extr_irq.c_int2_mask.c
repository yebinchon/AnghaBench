
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int INTMR2 ;
 int clps_readl (int ) ;
 int clps_writel (int,int ) ;

__attribute__((used)) static void int2_mask(unsigned int irq)
{
 u32 intmr2;

 intmr2 = clps_readl(INTMR2);
 intmr2 &= ~(1 << (irq - 16));
 clps_writel(intmr2, INTMR2);
}
