
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intctl_write (int) ;
 int iop32x_mask ;

__attribute__((used)) static void
iop32x_irq_mask(unsigned int irq)
{
 iop32x_mask &= ~(1 << irq);
 intctl_write(iop32x_mask);
}
