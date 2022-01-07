
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {scalar_t__ handle_irq; } ;


 scalar_t__ handle_edge_irq ;
 struct irq_desc* irq_desc ;
 int irq_to_gpio (unsigned int) ;
 int set_gpio_data (int ,int ) ;
 int set_gpio_maska (int ,int ) ;

__attribute__((used)) static void bfin_gpio_mask_ack_irq(unsigned int irq)
{
 struct irq_desc *desc = irq_desc + irq;
 u32 gpionr = irq_to_gpio(irq);

 if (desc->handle_irq == handle_edge_irq)
  set_gpio_data(gpionr, 0);

 set_gpio_maska(gpionr, 0);
}
