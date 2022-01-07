
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int* irqs; } ;


 int IRQ_HANDLED ;
 TYPE_1__ kstat_cpu (int ) ;
 int * led_pattern ;
 int* sun3_intreg ;
 int sun3_leds (int ) ;

__attribute__((used)) static irqreturn_t sun3_int7(int irq, void *dev_id)
{
 *sun3_intreg |= (1 << irq);
 if (!(kstat_cpu(0).irqs[irq] % 2000))
  sun3_leds(led_pattern[(kstat_cpu(0).irqs[irq] % 16000) / 2000]);
 return IRQ_HANDLED;
}
