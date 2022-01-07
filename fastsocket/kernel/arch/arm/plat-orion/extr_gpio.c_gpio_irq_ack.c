
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int status; } ;


 int GPIO_EDGE_CAUSE (int) ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_SENSE_MASK ;
 TYPE_1__* irq_desc ;
 int irq_to_gpio (size_t) ;
 int writel (int,int ) ;

__attribute__((used)) static void gpio_irq_ack(u32 irq)
{
 int type = irq_desc[irq].status & IRQ_TYPE_SENSE_MASK;
 if (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING)) {
  int pin = irq_to_gpio(irq);
  writel(~(1 << (pin & 31)), GPIO_EDGE_CAUSE(pin));
 }
}
