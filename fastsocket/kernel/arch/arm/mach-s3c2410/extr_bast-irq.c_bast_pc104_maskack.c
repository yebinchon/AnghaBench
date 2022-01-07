
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* ack ) (int) ;} ;


 int IRQ_ISA ;
 int bast_pc104_mask (unsigned int) ;
 struct irq_desc* irq_desc ;
 int stub1 (int) ;

__attribute__((used)) static void
bast_pc104_maskack(unsigned int irqno)
{
 struct irq_desc *desc = irq_desc + IRQ_ISA;

 bast_pc104_mask(irqno);
 desc->chip->ack(IRQ_ISA);
}
