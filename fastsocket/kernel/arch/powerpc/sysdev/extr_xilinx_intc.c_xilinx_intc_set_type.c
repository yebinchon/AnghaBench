
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {unsigned int status; } ;


 unsigned int IRQ_LEVEL ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 struct irq_desc* get_irq_desc (unsigned int) ;

__attribute__((used)) static int xilinx_intc_set_type(unsigned int virq, unsigned int flow_type)
{
 struct irq_desc *desc = get_irq_desc(virq);

 desc->status &= ~(IRQ_TYPE_SENSE_MASK | IRQ_LEVEL);
 desc->status |= flow_type & IRQ_TYPE_SENSE_MASK;
 if (flow_type & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW))
  desc->status |= IRQ_LEVEL;
 return 0;
}
