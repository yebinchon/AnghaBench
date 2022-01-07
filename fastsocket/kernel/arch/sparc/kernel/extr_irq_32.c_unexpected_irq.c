
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int * u_regs; int npc; int pc; } ;
struct irqaction {scalar_t__ handler; int name; } ;
struct TYPE_2__ {struct irqaction* action; } ;


 int NR_IRQS ;
 int panic (char*) ;
 int printk (char*,...) ;
 TYPE_1__* sparc_irq ;

void unexpected_irq(int irq, void *dev_id, struct pt_regs * regs)
{
        int i;
 struct irqaction * action;
 unsigned int cpu_irq;

 cpu_irq = irq & (NR_IRQS - 1);
 action = sparc_irq[cpu_irq].action;

        printk("IO device interrupt, irq = %d\n", irq);
        printk("PC = %08lx NPC = %08lx FP=%08lx\n", regs->pc,
      regs->npc, regs->u_regs[14]);
 if (action) {
  printk("Expecting: ");
         for (i = 0; i < 16; i++)
                 if (action->handler)
                         printk("[%s:%d:0x%x] ", action->name,
           (int) i, (unsigned int) action->handler);
 }
        printk("AIEEE\n");
 panic("bogus interrupt received");
}
