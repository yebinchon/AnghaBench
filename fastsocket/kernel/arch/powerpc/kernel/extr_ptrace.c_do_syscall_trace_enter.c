
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int* gpr; } ;
struct TYPE_2__ {int audit_context; } ;


 int AUDIT_ARCH_PPC ;
 int AUDIT_ARCH_PPC64 ;
 int TIF_32BIT ;
 int TIF_SYSCALL_TRACE ;
 int audit_syscall_entry (int ,int,int,int,int,int) ;
 TYPE_1__* current ;
 int secure_computing (int) ;
 scalar_t__ test_thread_flag (int ) ;
 scalar_t__ tracehook_report_syscall_entry (struct pt_regs*) ;
 scalar_t__ unlikely (int ) ;

long do_syscall_trace_enter(struct pt_regs *regs)
{
 long ret = 0;

 secure_computing(regs->gpr[0]);

 if (test_thread_flag(TIF_SYSCALL_TRACE) &&
     tracehook_report_syscall_entry(regs))





  ret = -1L;

 if (unlikely(current->audit_context)) {
   audit_syscall_entry(AUDIT_ARCH_PPC,
         regs->gpr[0],
         regs->gpr[3] & 0xffffffff,
         regs->gpr[4] & 0xffffffff,
         regs->gpr[5] & 0xffffffff,
         regs->gpr[6] & 0xffffffff);
 }

 return ret ?: regs->gpr[0];
}
