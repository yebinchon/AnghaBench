
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIPS_CPU_IPI_IRQ ;
 int cpu_has_vint ;
 int cpu_ipi_irq ;
 int handle_percpu_irq ;
 int ipi_irq_dispatch ;
 int irq_ipi ;
 int panic (char*) ;
 int set_irq_handler (int ,int ) ;
 int set_vi_handler (int,int ) ;
 int setup_irq_smtc (int ,int *,int) ;

__attribute__((used)) static void setup_cross_vpe_interrupts(unsigned int nvpe)
{
 if (nvpe < 1)
  return;

 if (!cpu_has_vint)
  panic("SMTC Kernel requires Vectored Interrupt support");

 set_vi_handler(MIPS_CPU_IPI_IRQ, ipi_irq_dispatch);

 setup_irq_smtc(cpu_ipi_irq, &irq_ipi, (0x100 << MIPS_CPU_IPI_IRQ));

 set_irq_handler(cpu_ipi_irq, handle_percpu_irq);
}
