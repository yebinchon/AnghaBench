
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_intctl_0 () ;
 int write_intctl_0 (int) ;

__attribute__((used)) static void
iop13xx_irq_unmask0(unsigned int irq)
{
 write_intctl_0(read_intctl_0() | (1 << (irq - 0)));
}
