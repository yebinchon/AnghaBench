
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct uml_pt_regs {int dummy; } ;
struct TYPE_4__ {int ptrace; scalar_t__ exit_code; int audit_context; } ;


 int AUDITSC_RESULT (int ) ;
 int HOST_AUDIT_ARCH ;
 int PT_DTRACE ;
 int PT_PTRACED ;
 int PT_TRACESYSGOOD ;
 int SIGTRAP ;
 int TIF_SIGPENDING ;
 int TIF_SYSCALL_TRACE ;
 int UPT_SYSCALL_ARG1 (struct uml_pt_regs*) ;
 int UPT_SYSCALL_ARG2 (struct uml_pt_regs*) ;
 int UPT_SYSCALL_ARG3 (struct uml_pt_regs*) ;
 int UPT_SYSCALL_ARG4 (struct uml_pt_regs*) ;
 int UPT_SYSCALL_NR (struct uml_pt_regs*) ;
 int UPT_SYSCALL_RET (struct uml_pt_regs*) ;
 int audit_syscall_entry (int ,int ,int ,int ,int ,int ) ;
 int audit_syscall_exit (int ,int ) ;
 TYPE_1__* current ;
 int ptrace_notify (int) ;
 int send_sig (scalar_t__,TYPE_1__*,int) ;
 int send_sigtrap (TYPE_1__*,struct uml_pt_regs*,int ) ;
 int set_thread_flag (int ) ;
 int test_thread_flag (int ) ;
 scalar_t__ unlikely (int ) ;

void syscall_trace(struct uml_pt_regs *regs, int entryexit)
{
 int is_singlestep = (current->ptrace & PT_DTRACE) && entryexit;
 int tracesysgood;

 if (unlikely(current->audit_context)) {
  if (!entryexit)
   audit_syscall_entry(HOST_AUDIT_ARCH,
         UPT_SYSCALL_NR(regs),
         UPT_SYSCALL_ARG1(regs),
         UPT_SYSCALL_ARG2(regs),
         UPT_SYSCALL_ARG3(regs),
         UPT_SYSCALL_ARG4(regs));
  else audit_syscall_exit(AUDITSC_RESULT(UPT_SYSCALL_RET(regs)),
     UPT_SYSCALL_RET(regs));
 }


 if (is_singlestep)
  send_sigtrap(current, regs, 0);

 if (!test_thread_flag(TIF_SYSCALL_TRACE))
  return;

 if (!(current->ptrace & PT_PTRACED))
  return;





 tracesysgood = (current->ptrace & PT_TRACESYSGOOD);
 ptrace_notify(SIGTRAP | (tracesysgood ? 0x80 : 0));

 if (entryexit)
  set_thread_flag(TIF_SIGPENDING);






 if (current->exit_code) {
  send_sig(current->exit_code, current, 1);
  current->exit_code = 0;
 }
}
