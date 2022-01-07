
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_intctl_2 () ;
 int write_intctl_2 (int) ;

__attribute__((used)) static void
iop13xx_irq_mask2 (unsigned int irq)
{
 write_intctl_2(read_intctl_2() & ~(1 << (irq - 64)));
}
