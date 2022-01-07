
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef int elf_fpregset_t ;



int dump_fpu(struct pt_regs *regs, elf_fpregset_t *fpu)
{

 return 0;
}
