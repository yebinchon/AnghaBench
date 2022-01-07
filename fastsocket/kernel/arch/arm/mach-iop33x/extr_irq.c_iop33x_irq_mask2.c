
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intctl1_write (int) ;
 int iop33x_mask1 ;

__attribute__((used)) static void
iop33x_irq_mask2 (unsigned int irq)
{
 iop33x_mask1 &= ~(1 << (irq - 32));
 intctl1_write(iop33x_mask1);
}
