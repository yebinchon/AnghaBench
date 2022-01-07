
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int vpe_id; } ;


 int IRQ_HANDLED ;
 TYPE_1__* cpu_data ;
 int handle_perf_irq (int) ;
 int read_c0_cause () ;
 int read_c0_compare () ;
 int smp_processor_id () ;
 int smtc_distribute_timer (int ) ;
 int write_c0_compare (int ) ;

irqreturn_t c0_compare_interrupt(int irq, void *dev_id)
{
 int cpu = smp_processor_id();


 handle_perf_irq(1);

 if (read_c0_cause() & (1 << 30)) {

  write_c0_compare(read_c0_compare());
  smtc_distribute_timer(cpu_data[cpu].vpe_id);
 }
 return IRQ_HANDLED;
}
