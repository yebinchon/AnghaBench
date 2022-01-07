
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_GETREGS ;
 int arch_init_registers (int) ;
 int errno ;
 int exec_regs ;
 int ptrace (int ,int,int ,int ) ;

int init_registers(int pid)
{
 int err;

 err = ptrace(PTRACE_GETREGS, pid, 0, exec_regs);
 if (err < 0)
  return -errno;

 arch_init_registers(pid);
 return 0;
}
