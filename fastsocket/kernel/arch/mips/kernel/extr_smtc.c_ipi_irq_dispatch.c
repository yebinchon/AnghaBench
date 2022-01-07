
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_ipi_irq ;
 int do_IRQ (int ) ;

__attribute__((used)) static void ipi_irq_dispatch(void)
{
 do_IRQ(cpu_ipi_irq);
}
