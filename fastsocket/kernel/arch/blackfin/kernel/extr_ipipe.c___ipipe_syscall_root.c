
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {scalar_t__ orig_p0; } ;
struct ipipe_percpu_domain_data {int irqpend_himask; } ;
struct TYPE_2__ {int flags; } ;


 int IPIPE_EVENT_SYSCALL ;
 int IPIPE_IRQMASK_VIRT ;
 scalar_t__ NR_syscalls ;
 int PF_EVNOTIFY ;
 int __ipipe_dispatch_event (int ,struct pt_regs*) ;
 int __ipipe_event_monitored_p (int ) ;
 int __ipipe_irq_tail_hook ;
 int __ipipe_root_domain_p ;
 int __ipipe_sync_pipeline (int) ;
 TYPE_1__* current ;
 struct ipipe_percpu_domain_data* ipipe_root_cpudom_ptr () ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;

int __ipipe_syscall_root(struct pt_regs *regs)
{
 struct ipipe_percpu_domain_data *p;
 unsigned long flags;
 int ret;
 if (regs->orig_p0 < NR_syscalls) {
  void (*hook)(void) = (void (*)(void))__ipipe_irq_tail_hook;
  hook();
  if ((current->flags & PF_EVNOTIFY) == 0)
   return 0;
 }
 if (!__ipipe_event_monitored_p(IPIPE_EVENT_SYSCALL))
  return 0;

 ret = __ipipe_dispatch_event(IPIPE_EVENT_SYSCALL, regs);

 local_irq_save_hw(flags);

 if (!__ipipe_root_domain_p) {
  local_irq_restore_hw(flags);
  return 1;
 }

 p = ipipe_root_cpudom_ptr();
 if ((p->irqpend_himask & IPIPE_IRQMASK_VIRT) != 0)
  __ipipe_sync_pipeline(IPIPE_IRQMASK_VIRT);

 local_irq_restore_hw(flags);

 return -ret;
}
