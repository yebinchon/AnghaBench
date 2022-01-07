
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_GETREGS ;
 int errno ;
 scalar_t__ ptrace (int ,long,int ,unsigned long*) ;

int ptrace_getregs(long pid, unsigned long *regs_out)
{
 if (ptrace(PTRACE_GETREGS, pid, 0, regs_out) < 0)
  return -errno;
 return(0);
}
