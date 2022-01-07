
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICU_INT_CONF (unsigned int) ;
 int IRQ_ROUTE_TO_AP ;
 int PRIORITY_DEFAULT ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void icu_unmask_irq(unsigned int irq)
{
 __raw_writel(IRQ_ROUTE_TO_AP | PRIORITY_DEFAULT, ICU_INT_CONF(irq));
}
