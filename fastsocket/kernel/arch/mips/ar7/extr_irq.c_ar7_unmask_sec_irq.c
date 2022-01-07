
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG (int ) ;
 int SEC_ESR_OFFSET ;
 unsigned int ar7_irq_base ;
 int writel (int,int ) ;

__attribute__((used)) static void ar7_unmask_sec_irq(unsigned int irq)
{
 writel(1 << (irq - ar7_irq_base - 40), REG(SEC_ESR_OFFSET));
}
