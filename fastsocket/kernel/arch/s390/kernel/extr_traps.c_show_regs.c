
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int mask; } ;
struct pt_regs {scalar_t__* gprs; TYPE_2__ psw; } ;
struct TYPE_12__ {int version; int release; } ;
struct TYPE_8__ {scalar_t__ ksp; } ;
struct TYPE_11__ {TYPE_1__ thread; int pid; int comm; } ;
struct TYPE_10__ {int cpu; } ;


 int PSW_MASK_PSTATE ;
 TYPE_4__* current ;
 TYPE_6__* init_utsname () ;
 int print_modules () ;
 int print_tainted () ;
 int printk (char*,int ,int ,TYPE_4__*,void*,...) ;
 int show_last_breaking_event (struct pt_regs*) ;
 int show_registers (struct pt_regs*) ;
 int show_trace (int *,unsigned long*) ;
 scalar_t__ strcspn (int ,char*) ;
 TYPE_3__* task_thread_info (TYPE_4__*) ;

void show_regs(struct pt_regs *regs)
{
 print_modules();
 printk("CPU: %d %s %s %.*s\n",
        task_thread_info(current)->cpu, print_tainted(),
        init_utsname()->release,
        (int)strcspn(init_utsname()->version, " "),
        init_utsname()->version);
 printk("Process %s (pid: %d, task: %p, ksp: %p)\n",
        current->comm, current->pid, current,
        (void *) current->thread.ksp);
 show_registers(regs);

 if (!(regs->psw.mask & PSW_MASK_PSTATE))
  show_trace(((void*)0), (unsigned long *) regs->gprs[15]);
 show_last_breaking_event(regs);
}
