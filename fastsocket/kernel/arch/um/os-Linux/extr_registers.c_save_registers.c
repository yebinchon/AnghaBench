
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int gp; } ;


 int PTRACE_GETREGS ;
 int errno ;
 int ptrace (int ,int,int ,int ) ;

int save_registers(int pid, struct uml_pt_regs *regs)
{
 int err;

 err = ptrace(PTRACE_GETREGS, pid, 0, regs->gp);
 if (err < 0)
  return -errno;
 return 0;
}
