
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; int psr; } ;


 int PSR_PS ;
 int __get_user (unsigned int,unsigned int*) ;
 unsigned long safe_compute_effective_address (struct pt_regs*,unsigned int) ;

__attribute__((used)) static unsigned long compute_si_addr(struct pt_regs *regs, int text_fault)
{
 unsigned int insn;

 if (text_fault)
  return regs->pc;

 if (regs->psr & PSR_PS) {
  insn = *(unsigned int *) regs->pc;
 } else {
  __get_user(insn, (unsigned int *) regs->pc);
 }

 return safe_compute_effective_address(regs, insn);
}
