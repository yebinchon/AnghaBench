
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int ptrace; } ;


 int PT_PTRACED ;
 int TIF_SYSCALL_TRACE ;
 TYPE_1__* current ;
 int do_syscall_trace () ;
 scalar_t__ test_thread_flag (int ) ;

void do_syscall_trace_leave(struct pt_regs *regs)
{
 if ((test_thread_flag(TIF_SYSCALL_TRACE))
   && (current->ptrace & PT_PTRACED))
  do_syscall_trace();
}
