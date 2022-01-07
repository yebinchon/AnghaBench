
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ cp0_cause; scalar_t__ cp0_status; scalar_t__ cp0_badvaddr; scalar_t__ cp0_epc; scalar_t__ hi; scalar_t__ lo; scalar_t__* regs; } ;
typedef scalar_t__* elf_gregset_t ;
typedef scalar_t__ elf_greg_t ;


 size_t EF_CP0_BADVADDR ;
 size_t EF_CP0_CAUSE ;
 size_t EF_CP0_EPC ;
 size_t EF_CP0_STATUS ;
 size_t EF_HI ;
 size_t EF_LO ;
 int EF_R0 ;
 size_t EF_R26 ;
 size_t EF_R27 ;
 size_t EF_UNUSED0 ;

void elf32_core_copy_regs(elf_gregset_t grp, struct pt_regs *regs)
{
 int i;

 for (i = 0; i < EF_R0; i++)
  grp[i] = 0;
 grp[EF_R0] = 0;
 for (i = 1; i <= 31; i++)
  grp[EF_R0 + i] = (elf_greg_t) regs->regs[i];
 grp[EF_R26] = 0;
 grp[EF_R27] = 0;
 grp[EF_LO] = (elf_greg_t) regs->lo;
 grp[EF_HI] = (elf_greg_t) regs->hi;
 grp[EF_CP0_EPC] = (elf_greg_t) regs->cp0_epc;
 grp[EF_CP0_BADVADDR] = (elf_greg_t) regs->cp0_badvaddr;
 grp[EF_CP0_STATUS] = (elf_greg_t) regs->cp0_status;
 grp[EF_CP0_CAUSE] = (elf_greg_t) regs->cp0_cause;



}
