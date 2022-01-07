
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pio_device {int dummy; } ;
struct irq_desc {int (* handle_irq ) (int,struct irq_desc*) ;} ;


 int IMR ;
 int ISR ;
 int ffs (int) ;
 struct pio_device* get_irq_chip_data (unsigned int) ;
 scalar_t__ get_irq_data (unsigned int) ;
 struct irq_desc* irq_desc ;
 int pio_readl (struct pio_device*,int ) ;
 int stub1 (int,struct irq_desc*) ;

__attribute__((used)) static void gpio_irq_handler(unsigned irq, struct irq_desc *desc)
{
 struct pio_device *pio = get_irq_chip_data(irq);
 unsigned gpio_irq;

 gpio_irq = (unsigned) get_irq_data(irq);
 for (;;) {
  u32 isr;
  struct irq_desc *d;


  isr = pio_readl(pio, ISR) & pio_readl(pio, IMR);
  if (!isr)
   break;
  do {
   int i;

   i = ffs(isr) - 1;
   isr &= ~(1 << i);

   i += gpio_irq;
   d = &irq_desc[i];

   d->handle_irq(i, d);
  } while (isr);
 }
}
