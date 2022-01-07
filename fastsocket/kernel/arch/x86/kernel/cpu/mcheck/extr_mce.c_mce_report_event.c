
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int flags; } ;
struct TYPE_2__ {int (* send_IPI_self ) (int ) ;} ;


 int MCE_SELF_VECTOR ;
 int X86_EFLAGS_IF ;
 int X86_VM_MASK ;
 TYPE_1__* apic ;
 int apic_wait_icr_idle () ;
 int cpu_has_apic ;
 int mce_notify_irq () ;
 int mce_schedule_work () ;
 int stub1 (int ) ;

__attribute__((used)) static void mce_report_event(struct pt_regs *regs)
{
 if (regs->flags & (X86_VM_MASK|X86_EFLAGS_IF)) {
  mce_notify_irq();






  mce_schedule_work();
  return;
 }
}
