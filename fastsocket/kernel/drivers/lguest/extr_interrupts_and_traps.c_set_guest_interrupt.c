
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct lg_cpu {unsigned long esp1; int ss1; TYPE_3__* lg; TYPE_1__* regs; } ;
struct TYPE_6__ {TYPE_2__* lguest_data; } ;
struct TYPE_5__ {int irq_enabled; } ;
struct TYPE_4__ {int ss; int esp; int eflags; int cs; int eip; int errcode; } ;


 int GUEST_PL ;
 int X86_EFLAGS_IF ;
 int __KERNEL_CS ;
 scalar_t__ get_user (int,int *) ;
 unsigned long guest_pa (struct lg_cpu*,unsigned long) ;
 int idt_address (int,int) ;
 int idt_type (int,int) ;
 int kill_guest (struct lg_cpu*,char*) ;
 int push_guest_stack (struct lg_cpu*,unsigned long*,int) ;
 scalar_t__ put_user (int ,int *) ;

__attribute__((used)) static void set_guest_interrupt(struct lg_cpu *cpu, u32 lo, u32 hi,
    bool has_err)
{
 unsigned long gstack, origstack;
 u32 eflags, ss, irq_enable;
 unsigned long virtstack;






 if ((cpu->regs->ss&0x3) != GUEST_PL) {




  virtstack = cpu->esp1;
  ss = cpu->ss1;

  origstack = gstack = guest_pa(cpu, virtstack);






  push_guest_stack(cpu, &gstack, cpu->regs->ss);
  push_guest_stack(cpu, &gstack, cpu->regs->esp);
 } else {

  virtstack = cpu->regs->esp;
  ss = cpu->regs->ss;

  origstack = gstack = guest_pa(cpu, virtstack);
 }







 eflags = cpu->regs->eflags;
 if (get_user(irq_enable, &cpu->lg->lguest_data->irq_enabled) == 0
     && !(irq_enable & X86_EFLAGS_IF))
  eflags &= ~X86_EFLAGS_IF;






 push_guest_stack(cpu, &gstack, eflags);
 push_guest_stack(cpu, &gstack, cpu->regs->cs);
 push_guest_stack(cpu, &gstack, cpu->regs->eip);


 if (has_err)
  push_guest_stack(cpu, &gstack, cpu->regs->errcode);





 cpu->regs->ss = ss;
 cpu->regs->esp = virtstack + (gstack - origstack);
 cpu->regs->cs = (__KERNEL_CS|GUEST_PL);
 cpu->regs->eip = idt_address(lo, hi);





 if (idt_type(lo, hi) == 0xE)
  if (put_user(0, &cpu->lg->lguest_data->irq_enabled))
   kill_guest(cpu, "Disabling interrupts");
}
