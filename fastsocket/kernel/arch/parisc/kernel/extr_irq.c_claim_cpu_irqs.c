
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* status; int * action; int * chip; } ;


 int CPU_IRQ_BASE ;
 int CPU_IRQ_MAX ;
 size_t IPI_IRQ ;
 void* IRQ_PER_CPU ;
 size_t TIMER_IRQ ;
 int cpu_interrupt_type ;
 int ipi_action ;
 TYPE_1__* irq_desc ;
 int timer_action ;

__attribute__((used)) static void claim_cpu_irqs(void)
{
 int i;
 for (i = CPU_IRQ_BASE; i <= CPU_IRQ_MAX; i++) {
  irq_desc[i].chip = &cpu_interrupt_type;
 }

 irq_desc[TIMER_IRQ].action = &timer_action;
 irq_desc[TIMER_IRQ].status = IRQ_PER_CPU;




}
