
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptrace; scalar_t__ exit_code; } ;


 int PT_PTRACED ;
 int PT_TRACESYSGOOD ;
 int SIGTRAP ;
 int TIF_SYSCALL_TRACE ;
 TYPE_1__* current ;
 int ptrace_notify (int) ;
 int send_sig (scalar_t__,TYPE_1__*,int) ;
 int test_thread_flag (int ) ;

void do_syscall_trace(void)
{
 if (!test_thread_flag(TIF_SYSCALL_TRACE))
  return;
 if (!(current->ptrace & PT_PTRACED))
  return;


 ptrace_notify(SIGTRAP | ((current->ptrace & PT_TRACESYSGOOD)
     ? 0x80 : 0));






 if (current->exit_code) {
  send_sig(current->exit_code, current, 1);
  current->exit_code = 0;
 }
}
