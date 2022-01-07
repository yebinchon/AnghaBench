
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ kprobe_fault_handler (struct pt_regs*,int) ;
 scalar_t__ kprobe_running () ;
 scalar_t__ kprobes_built_in () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static inline int notify_page_fault(struct pt_regs *regs, int trap)
{
 int ret = 0;

 if (kprobes_built_in() && !user_mode(regs)) {
  preempt_disable();
  if (kprobe_running() && kprobe_fault_handler(regs, trap))
   ret = 1;
  preempt_enable();
 }

 return ret;
}
