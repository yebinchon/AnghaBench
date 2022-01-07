
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_fpxregs_struct {int dummy; } ;


 scalar_t__ EIO ;
 int PTRACE_GETFPXREGS ;
 scalar_t__ errno ;
 scalar_t__ have_fpx_regs ;
 int panic (char*,scalar_t__) ;
 int ptrace (int ,int,int ,struct user_fpxregs_struct*) ;

void arch_init_registers(int pid)
{
 struct user_fpxregs_struct fpx_regs;
 int err;

 err = ptrace(PTRACE_GETFPXREGS, pid, 0, &fpx_regs);
 if (!err)
  return;

 if (errno != EIO)
  panic("check_ptrace : PTRACE_GETFPXREGS failed, errno = %d",
        errno);

 have_fpx_regs = 0;
}
