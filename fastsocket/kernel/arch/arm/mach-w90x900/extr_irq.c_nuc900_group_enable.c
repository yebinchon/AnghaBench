
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_irq {unsigned int gpen; } ;


 int REG_AIC_GEN ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void nuc900_group_enable(struct group_irq *gpirq, int enable)
{
 unsigned int groupen = gpirq->gpen;
 unsigned long regval;

 regval = __raw_readl(REG_AIC_GEN);

 if (enable)
  regval |= groupen;
 else
  regval &= ~groupen;

 __raw_writel(regval, REG_AIC_GEN);
}
