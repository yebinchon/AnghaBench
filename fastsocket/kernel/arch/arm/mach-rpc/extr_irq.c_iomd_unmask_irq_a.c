
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOMD_IRQMASKA ;
 unsigned int iomd_readb (int ) ;
 int iomd_writeb (unsigned int,int ) ;

__attribute__((used)) static void iomd_unmask_irq_a(unsigned int irq)
{
 unsigned int val, mask;

 mask = 1 << irq;
 val = iomd_readb(IOMD_IRQMASKA);
 iomd_writeb(val | mask, IOMD_IRQMASKA);
}
