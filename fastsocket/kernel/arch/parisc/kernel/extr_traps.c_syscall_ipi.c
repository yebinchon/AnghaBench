
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;



int syscall_ipi(int (*syscall) (struct pt_regs *), struct pt_regs *regs)
{
 return syscall(regs);
}
