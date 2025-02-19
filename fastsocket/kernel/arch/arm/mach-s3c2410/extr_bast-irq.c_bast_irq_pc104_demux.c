
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* ack ) (int) ;} ;


 int BAST_VA_PC104_IRQREQ ;
 int IRQ_ISA ;
 int __raw_readb (int ) ;
 unsigned int* bast_pc104_irqs ;
 int generic_handle_irq (unsigned int) ;
 struct irq_desc* irq_desc ;
 int stub1 (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
bast_irq_pc104_demux(unsigned int irq,
       struct irq_desc *desc)
{
 unsigned int stat;
 unsigned int irqno;
 int i;

 stat = __raw_readb(BAST_VA_PC104_IRQREQ) & 0xf;

 if (unlikely(stat == 0)) {


  desc = irq_desc + IRQ_ISA;
  desc->chip->ack(IRQ_ISA);
 } else {


  for (i = 0; stat != 0; i++, stat >>= 1) {
   if (stat & 1) {
    irqno = bast_pc104_irqs[i];
    generic_handle_irq(irqno);
   }
  }
 }
}
