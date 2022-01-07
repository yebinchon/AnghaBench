
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SYS_IC (int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int irq2prio (unsigned int) ;

__attribute__((used)) static void ns9xxx_mask_irq(unsigned int irq)
{

 int prio = irq2prio(irq);
 u32 ic = __raw_readl(SYS_IC(prio / 4));
 ic &= ~(1 << (7 + 8 * (3 - (prio & 3))));
 __raw_writel(ic, SYS_IC(prio / 4));
}
