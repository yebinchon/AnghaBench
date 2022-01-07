
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intctl0_write (int) ;
 int iop33x_mask0 ;

__attribute__((used)) static void
iop33x_irq_unmask1(unsigned int irq)
{
 iop33x_mask0 |= 1 << irq;
 intctl0_write(iop33x_mask0);
}
