
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int bpc; } ;


 int emu_m32r2 (unsigned short,struct pt_regs*) ;

__attribute__((used)) static int insn_check(unsigned long insn, struct pt_regs *regs,
 unsigned char **ucp)
{
 int res = 0;






 if (insn & 0x80000000) {
  *ucp += (short)(insn & 0x0000ffff);
  regs->bpc += 4;
 } else {







   regs->bpc += 2;
 }

 return res;
}
