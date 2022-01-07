
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {struct desc_struct* idt; } ;
struct lg_cpu {TYPE_4__* lg; int irqs_pending; TYPE_2__ arch; scalar_t__ halted; TYPE_1__* regs; } ;
struct desc_struct {int b; int a; } ;
struct TYPE_8__ {scalar_t__ noirq_start; scalar_t__ noirq_end; TYPE_3__* lguest_data; } ;
struct TYPE_7__ {int irq_pending; int irq_enabled; } ;
struct TYPE_5__ {scalar_t__ eip; } ;


 int BUG_ON (int) ;
 unsigned int FIRST_EXTERNAL_VECTOR ;
 unsigned int LGUEST_IRQS ;
 int X86_EFLAGS_IF ;
 int clear_bit (unsigned int,int ) ;
 scalar_t__ get_user (scalar_t__,int *) ;
 scalar_t__ idt_present (int ,int ) ;
 int kill_guest (struct lg_cpu*,char*) ;
 scalar_t__ put_user (int ,int *) ;
 int set_guest_interrupt (struct lg_cpu*,int ,int ,int) ;
 int write_timestamp (struct lg_cpu*) ;

void try_deliver_interrupt(struct lg_cpu *cpu, unsigned int irq, bool more)
{
 struct desc_struct *idt;

 BUG_ON(irq >= LGUEST_IRQS);





 if (cpu->regs->eip >= cpu->lg->noirq_start &&
    (cpu->regs->eip < cpu->lg->noirq_end))
  return;


 if (cpu->halted) {

  if (put_user(X86_EFLAGS_IF, &cpu->lg->lguest_data->irq_enabled))
   kill_guest(cpu, "Re-enabling interrupts");
  cpu->halted = 0;
 } else {

  u32 irq_enabled;
  if (get_user(irq_enabled, &cpu->lg->lguest_data->irq_enabled))
   irq_enabled = 0;
  if (!irq_enabled) {

   put_user(X86_EFLAGS_IF,
     &cpu->lg->lguest_data->irq_pending);
   return;
  }
 }






 idt = &cpu->arch.idt[FIRST_EXTERNAL_VECTOR+irq];

 if (idt_present(idt->a, idt->b)) {

  clear_bit(irq, cpu->irqs_pending);





  set_guest_interrupt(cpu, idt->a, idt->b, 0);
 }
 write_timestamp(cpu);





 if (!more)
  put_user(0, &cpu->lg->lguest_data->irq_pending);
}
