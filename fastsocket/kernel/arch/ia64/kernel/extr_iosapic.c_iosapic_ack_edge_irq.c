
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status; } ;


 int IRQ_DISABLED ;
 int IRQ_PENDING ;
 int irq_complete_move (unsigned int) ;
 struct irq_desc* irq_desc ;
 int mask_irq (unsigned int) ;
 int move_native_irq (unsigned int) ;

__attribute__((used)) static void
iosapic_ack_edge_irq (unsigned int irq)
{
 struct irq_desc *idesc = irq_desc + irq;

 irq_complete_move(irq);
 move_native_irq(irq);





 if ((idesc->status & (IRQ_PENDING|IRQ_DISABLED)) ==
     (IRQ_PENDING|IRQ_DISABLED))
  mask_irq(irq);
}
