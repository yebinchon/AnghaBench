
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int tpc; int tstate; } ;


 int TSTATE_PRIV ;
 unsigned int get_user_insn (int) ;

__attribute__((used)) static unsigned int get_fault_insn(struct pt_regs *regs, unsigned int insn)
{
 if (!insn) {
  if (!regs->tpc || (regs->tpc & 0x3))
   return 0;
  if (regs->tstate & TSTATE_PRIV) {
   insn = *(unsigned int *) regs->tpc;
  } else {
   insn = get_user_insn(regs->tpc);
  }
 }
 return insn;
}
