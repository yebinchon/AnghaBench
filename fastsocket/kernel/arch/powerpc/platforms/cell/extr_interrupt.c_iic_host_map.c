
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;
typedef int irq_hw_number_t ;




 int IIC_IRQ_TYPE_MASK ;
 int handle_iic_irq ;
 int handle_percpu_irq ;
 int iic_chip ;
 int iic_ioexc_chip ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;

__attribute__((used)) static int iic_host_map(struct irq_host *h, unsigned int virq,
   irq_hw_number_t hw)
{
 switch (hw & IIC_IRQ_TYPE_MASK) {
 case 128:
  set_irq_chip_and_handler(virq, &iic_chip, handle_percpu_irq);
  break;
 case 129:
  set_irq_chip_and_handler(virq, &iic_ioexc_chip,
      handle_iic_irq);
  break;
 default:
  set_irq_chip_and_handler(virq, &iic_chip, handle_iic_irq);
 }
 return 0;
}
