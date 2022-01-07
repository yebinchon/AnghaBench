
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ have_fpx_regs ;
 int save_fp_registers (int,unsigned long*) ;
 int save_fpx_registers (int,unsigned long*) ;

int get_fp_registers(int pid, unsigned long *regs)
{
 if (have_fpx_regs)
  return save_fpx_registers(pid, regs);
 else
  return save_fp_registers(pid, regs);
}
