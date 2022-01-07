
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CIE ;
 scalar_t__ IAR ;
 scalar_t__ INTC_BASE ;
 int out_be32 (scalar_t__,unsigned long) ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static void intc_mask_ack(unsigned int irq)
{
 unsigned long mask = 1 << irq;
 pr_debug("disable_and_ack: %d\n", irq);
 out_be32(INTC_BASE + CIE, mask);
 out_be32(INTC_BASE + IAR, mask);
}
