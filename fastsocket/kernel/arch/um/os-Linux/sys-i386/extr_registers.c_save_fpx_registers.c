
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_GETFPXREGS ;
 int errno ;
 scalar_t__ ptrace (int ,int,int ,unsigned long*) ;

int save_fpx_registers(int pid, unsigned long *fp_regs)
{
 if (ptrace(PTRACE_GETFPXREGS, pid, 0, fp_regs) < 0)
  return -errno;
 return 0;
}
