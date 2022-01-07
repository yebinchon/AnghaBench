
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stmp3xxx_pinmux_bank {int virq; int irqstat; } ;
struct irq_desc {int dummy; } ;
struct TYPE_3__ {int (* handle_irq ) (int,TYPE_1__*) ;} ;


 int __raw_readl (int ) ;
 struct stmp3xxx_pinmux_bank* get_irq_data (int) ;
 TYPE_1__* irq_desc ;
 int stub1 (int,TYPE_1__*) ;

__attribute__((used)) static void stmp3xxx_gpio_irq(u32 irq, struct irq_desc *desc)
{
 struct stmp3xxx_pinmux_bank *pm = get_irq_data(irq);
 int gpio_irq = pm->virq;
 u32 stat = __raw_readl(pm->irqstat);

 while (stat) {
  if (stat & 1)
   irq_desc[gpio_irq].handle_irq(gpio_irq,
    &irq_desc[gpio_irq]);
  gpio_irq++;
  stat >>= 1;
 }
}
