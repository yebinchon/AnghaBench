
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_desc {unsigned int status; int handle_irq; } ;
typedef int irq_hw_number_t ;
struct TYPE_4__ {scalar_t__ hwirq; } ;
struct TYPE_3__ {int sc_siel; } ;


 unsigned int IRQ_LEVEL ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 struct irq_desc* get_irq_desc (unsigned int) ;
 int handle_edge_irq ;
 unsigned int in_be32 (int *) ;
 TYPE_2__* irq_map ;
 int out_be32 (int *,unsigned int) ;
 TYPE_1__* siu_reg ;

__attribute__((used)) static int mpc8xx_set_irq_type(unsigned int virq, unsigned int flow_type)
{
 struct irq_desc *desc = get_irq_desc(virq);

 desc->status &= ~(IRQ_TYPE_SENSE_MASK | IRQ_LEVEL);
 desc->status |= flow_type & IRQ_TYPE_SENSE_MASK;
 if (flow_type & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW))
  desc->status |= IRQ_LEVEL;

 if (flow_type & IRQ_TYPE_EDGE_FALLING) {
  irq_hw_number_t hw = (unsigned int)irq_map[virq].hwirq;
  unsigned int siel = in_be32(&siu_reg->sc_siel);


  if ((hw & 1) == 0) {
   siel |= (0x80000000 >> hw);
   out_be32(&siu_reg->sc_siel, siel);
   desc->handle_irq = handle_edge_irq;
  }
 }
 return 0;
}
