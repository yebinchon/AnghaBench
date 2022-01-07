
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ have_fpx_regs ;
 int restore_fp_registers (int,unsigned long*) ;
 int restore_fpx_registers (int,unsigned long*) ;

int put_fp_registers(int pid, unsigned long *regs)
{
 if (have_fpx_regs)
  return restore_fpx_registers(pid, regs);
 else
  return restore_fp_registers(pid, regs);
}
