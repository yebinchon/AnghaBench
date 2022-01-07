
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INTC_BASE ;
 scalar_t__ SIE ;
 int out_be32 (scalar_t__,int) ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static void intc_enable_or_unmask(unsigned int irq)
{
 pr_debug("enable_or_unmask: %d\n", irq);
 out_be32(INTC_BASE + SIE, 1 << irq);
}
