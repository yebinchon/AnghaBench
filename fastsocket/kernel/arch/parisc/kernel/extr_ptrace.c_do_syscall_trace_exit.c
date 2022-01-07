
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int TIF_BLOCKSTEP ;
 int TIF_SINGLESTEP ;
 int TIF_SYSCALL_TRACE ;
 scalar_t__ test_thread_flag (int ) ;
 int tracehook_report_syscall_exit (struct pt_regs*,int) ;

void do_syscall_trace_exit(struct pt_regs *regs)
{
 int stepping = test_thread_flag(TIF_SINGLESTEP) ||
  test_thread_flag(TIF_BLOCKSTEP);

 if (stepping || test_thread_flag(TIF_SYSCALL_TRACE))
  tracehook_report_syscall_exit(regs, stepping);
}
