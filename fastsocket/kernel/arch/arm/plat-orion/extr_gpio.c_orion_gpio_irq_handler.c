
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int status; } ;


 int GPIO_DATA_IN (int) ;
 int GPIO_EDGE_CAUSE (int) ;
 int GPIO_EDGE_MASK (int) ;
 int GPIO_IN_POL (int) ;
 int GPIO_LEVEL_MASK (int) ;
 int IRQ_TYPE_EDGE_BOTH ;
 int IRQ_TYPE_SENSE_MASK ;
 int desc_handle_irq (int,struct irq_desc*) ;
 int gpio_to_irq (int) ;
 struct irq_desc* irq_desc ;
 int readl (int ) ;
 int writel (int,int ) ;

void orion_gpio_irq_handler(int pinoff)
{
 u32 cause;
 int pin;

 cause = readl(GPIO_DATA_IN(pinoff)) & readl(GPIO_LEVEL_MASK(pinoff));
 cause |= readl(GPIO_EDGE_CAUSE(pinoff)) & readl(GPIO_EDGE_MASK(pinoff));

 for (pin = pinoff; pin < pinoff + 8; pin++) {
  int irq = gpio_to_irq(pin);
  struct irq_desc *desc = irq_desc + irq;

  if (!(cause & (1 << (pin & 31))))
   continue;

  if ((desc->status & IRQ_TYPE_SENSE_MASK) == IRQ_TYPE_EDGE_BOTH) {

   u32 polarity;

   polarity = readl(GPIO_IN_POL(pin));
   polarity ^= 1 << (pin & 31);
   writel(polarity, GPIO_IN_POL(pin));
  }
  desc_handle_irq(irq, desc);
 }
}
