
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ INTC_BASE ;
 scalar_t__ IVR ;
 int in_be32 (scalar_t__) ;
 int pr_debug (char*,int) ;

unsigned int get_irq(struct pt_regs *regs)
{
 int irq;






 irq = in_be32(INTC_BASE + IVR);
 pr_debug("get_irq: %d\n", irq);

 return irq;
}
