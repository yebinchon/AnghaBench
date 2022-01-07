
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int* irqs; } ;


 int IRQ_HANDLED ;
 int do_timer (int) ;
 int get_irq_regs () ;
 int intersil_clear () ;
 TYPE_1__ kstat_cpu (int ) ;
 int * led_pattern ;
 int* sun3_intreg ;
 int sun3_leds (int ) ;
 int update_process_times (int ) ;
 int user_mode (int ) ;

__attribute__((used)) static irqreturn_t sun3_int5(int irq, void *dev_id)
{



        *sun3_intreg |= (1 << irq);



        do_timer(1);

 update_process_times(user_mode(get_irq_regs()));

        if (!(kstat_cpu(0).irqs[irq] % 20))
                sun3_leds(led_pattern[(kstat_cpu(0).irqs[irq] % 160) / 20]);
 return IRQ_HANDLED;
}
