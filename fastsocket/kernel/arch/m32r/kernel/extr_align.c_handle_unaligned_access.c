
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int bpc; } ;


 int emu_ld (unsigned long,struct pt_regs*) ;
 int emu_st (unsigned long,struct pt_regs*) ;

int handle_unaligned_access(unsigned long insn32, struct pt_regs *regs)
{
 unsigned short insn16;
 int res;

 insn16 = insn32 >> 16;


 if ((insn16 & 0x7000) != 0x2000)
  return -1;


 if ((insn16 & 0x8000) && (regs->bpc & 3))
  return -1;

 if (insn16 & 0x0080)
  res = emu_ld(insn32, regs);
 else
  res = emu_st(insn32, regs);

 return res;
}
