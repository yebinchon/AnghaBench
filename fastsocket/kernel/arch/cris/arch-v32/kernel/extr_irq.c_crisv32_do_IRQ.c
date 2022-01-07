
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int block_irq (int,int ) ;
 int do_IRQ (int,struct pt_regs*) ;
 int irq_cpu (int) ;
 int smp_processor_id () ;
 int unblock_irq (int,int ) ;

void
crisv32_do_IRQ(int irq, int block, struct pt_regs* regs)
{





 if (!block) {
  do_IRQ(irq, regs);
  return;
 }

 block_irq(irq, smp_processor_id());
 do_IRQ(irq, regs);

 unblock_irq(irq, irq_cpu(irq));
}
