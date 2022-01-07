
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IAR ;
 scalar_t__ INTC_BASE ;
 int out_be32 (scalar_t__,int) ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static void intc_ack(unsigned int irq)
{
 pr_debug("ack: %d\n", irq);
 out_be32(INTC_BASE + IAR, 1 << irq);
}
