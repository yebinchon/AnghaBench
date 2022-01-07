
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int fr; } ;
typedef int elf_fpregset_t ;


 int memcpy (int *,int ,int) ;

int dump_fpu (struct pt_regs * regs, elf_fpregset_t *r)
{
 if (regs == ((void*)0))
  return 0;

 memcpy(r, regs->fr, sizeof *r);
 return 1;
}
