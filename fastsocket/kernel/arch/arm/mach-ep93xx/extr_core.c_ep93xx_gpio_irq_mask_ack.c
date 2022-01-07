
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int EP93XX_GPIO_REG (int ) ;
 int IRQ_TYPE_EDGE_BOTH ;
 int IRQ_TYPE_SENSE_MASK ;
 int __raw_writeb (int,int ) ;
 int * eoi_register_offset ;
 int ep93xx_gpio_update_int_params (int) ;
 int* gpio_int_type2 ;
 int* gpio_int_unmasked ;
 TYPE_1__* irq_desc ;
 int irq_to_gpio (unsigned int) ;

__attribute__((used)) static void ep93xx_gpio_irq_mask_ack(unsigned int irq)
{
 int line = irq_to_gpio(irq);
 int port = line >> 3;
 int port_mask = 1 << (line & 7);

 if ((irq_desc[irq].status & IRQ_TYPE_SENSE_MASK) == IRQ_TYPE_EDGE_BOTH)
  gpio_int_type2[port] ^= port_mask;

 gpio_int_unmasked[port] &= ~port_mask;
 ep93xx_gpio_update_int_params(port);

 __raw_writeb(port_mask, EP93XX_GPIO_REG(eoi_register_offset[port]));
}
