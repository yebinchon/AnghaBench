
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MIPS_GIC_IRQ_BASE ;
 int do_IRQ (scalar_t__) ;
 int gic_get_int () ;

__attribute__((used)) static void malta_ipi_irqdispatch(void)
{
 int irq;

 irq = gic_get_int();
 if (irq < 0)
  return;

 do_IRQ(MIPS_GIC_IRQ_BASE + irq);
}
