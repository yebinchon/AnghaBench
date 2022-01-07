
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ cp0_cause; scalar_t__ cp0_status; scalar_t__ cp0_badvaddr; scalar_t__ cp0_epc; scalar_t__ hi; scalar_t__ lo; scalar_t__* regs; } ;
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

void elf_dump_regs(elf_greg_t *gp, struct pt_regs *regs)
{
 int i;

 for (i = 0; i < EF_R0; i++)
  gp[i] = 0;
 gp[EF_R0] = 0;
 for (i = 1; i <= 31; i++)
  gp[EF_R0 + i] = regs->regs[i];
 gp[EF_R26] = 0;
 gp[EF_R27] = 0;
 gp[EF_LO] = regs->lo;
 gp[EF_HI] = regs->hi;
 gp[EF_CP0_EPC] = regs->cp0_epc;
 gp[EF_CP0_BADVADDR] = regs->cp0_badvaddr;
 gp[EF_CP0_STATUS] = regs->cp0_status;
 gp[EF_CP0_CAUSE] = regs->cp0_cause;



}
