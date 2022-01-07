
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {long* gr; } ;


 int TIF_SYSCALL_TRACE ;
 scalar_t__ test_thread_flag (int ) ;
 scalar_t__ tracehook_report_syscall_entry (struct pt_regs*) ;

long do_syscall_trace_enter(struct pt_regs *regs)
{
 if (test_thread_flag(TIF_SYSCALL_TRACE) &&
     tracehook_report_syscall_entry(regs))
  return -1L;

 return regs->gr[20];
}
