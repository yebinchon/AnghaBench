
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int COEOI ;
 int INTMR1 ;






 int RTCEOI ;
 int TC1EOI ;
 int TC2EOI ;
 int TEOI ;
 int UMSEOI ;
 int clps_readl (int ) ;
 int clps_writel (int,int ) ;

__attribute__((used)) static void int1_ack(unsigned int irq)
{
 u32 intmr1;

 intmr1 = clps_readl(INTMR1);
 intmr1 &= ~(1 << irq);
 clps_writel(intmr1, INTMR1);

 switch (irq) {
 case 133: clps_writel(0, COEOI); break;
 case 131: clps_writel(0, TC1EOI); break;
 case 130: clps_writel(0, TC2EOI); break;
 case 132: clps_writel(0, RTCEOI); break;
 case 129: clps_writel(0, TEOI); break;
 case 128: clps_writel(0, UMSEOI); break;
 }
}
