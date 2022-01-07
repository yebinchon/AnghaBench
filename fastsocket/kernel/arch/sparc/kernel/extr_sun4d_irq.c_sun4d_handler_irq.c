
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbus_action {struct irqaction* action; } ;
struct pt_regs {int dummy; } ;
struct irqaction {struct irqaction* next; int dev_id; int (* handler ) (int,int ) ;} ;
struct TYPE_2__ {int * irqs; } ;


 int SBI2DEVID (int) ;
 unsigned int acquire_sbi (int ,int) ;
 int bw_clear_intr_mask (int,int) ;
 int bw_get_intr_mask (int) ;
 int cc_get_ipen () ;
 int cc_set_iclr (int) ;
 struct irqaction** irq_action ;
 int irq_enter () ;
 int irq_exit () ;
 TYPE_1__ kstat_cpu (int) ;
 int* pil_to_sbus ;
 int release_sbi (int ,unsigned int) ;
 struct sbus_action* sbus_actions ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 int smp_processor_id () ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int unexpected_irq (int,int *,struct pt_regs*) ;

void sun4d_handler_irq(int irq, struct pt_regs * regs)
{
 struct pt_regs *old_regs;
 struct irqaction * action;
 int cpu = smp_processor_id();

 int sbusl = pil_to_sbus[irq];


 cc_get_ipen();

 cc_set_iclr(1 << irq);

 old_regs = set_irq_regs(regs);
 irq_enter();
 kstat_cpu(cpu).irqs[irq]++;
 if (!sbusl) {
  action = *(irq + irq_action);
  if (!action)
   unexpected_irq(irq, ((void*)0), regs);
  do {
   action->handler(irq, action->dev_id);
   action = action->next;
  } while (action);
 } else {
  int bus_mask = bw_get_intr_mask(sbusl) & 0x3ffff;
  int sbino;
  struct sbus_action *actionp;
  unsigned mask, slot;
  int sbil = (sbusl << 2);

  bw_clear_intr_mask(sbusl, bus_mask);


  for (sbino = 0; bus_mask; sbino++, bus_mask >>= 1)
   if (bus_mask & 1) {
    mask = acquire_sbi(SBI2DEVID(sbino), 0xf << sbil);
    mask &= (0xf << sbil);
    actionp = sbus_actions + (sbino << 5) + (sbil);

    for (slot = (1 << sbil); mask; slot <<= 1, actionp++)
     if (mask & slot) {
      mask &= ~slot;
      action = actionp->action;

      if (!action)
       unexpected_irq(irq, ((void*)0), regs);
      do {
       action->handler(irq, action->dev_id);
       action = action->next;
      } while (action);
      release_sbi(SBI2DEVID(sbino), slot);
     }
   }
 }
 irq_exit();
 set_irq_regs(old_regs);
}
