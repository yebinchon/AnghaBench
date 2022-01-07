
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* uregs; } ;


 int LDST_L_BIT (unsigned long) ;
 unsigned int RD_BITS (unsigned long) ;
 int TYPE_ERROR ;
 int TYPE_FAULT ;
 int TYPE_LDST ;
 int ai_dword ;
 int get32_unaligned_check (unsigned long,unsigned long) ;
 int get32t_unaligned_check (unsigned long,unsigned long) ;
 int put32_unaligned_check (unsigned long,unsigned long) ;
 int put32t_unaligned_check (unsigned long,unsigned long) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int
do_alignment_ldrdstrd(unsigned long addr, unsigned long instr,
        struct pt_regs *regs)
{
 unsigned int rd = RD_BITS(instr);
 unsigned int rd2;
 int load;

 if ((instr & 0xfe000000) == 0xe8000000) {

  rd2 = (instr >> 8) & 0xf;
  load = !!(LDST_L_BIT(instr));
 } else if (((rd & 1) == 1) || (rd == 14))
  goto bad;
 else {
  load = ((instr & 0xf0) == 0xd0);
  rd2 = rd + 1;
 }

 ai_dword += 1;

 if (user_mode(regs))
  goto user;

 if (load) {
  unsigned long val;
  get32_unaligned_check(val, addr);
  regs->uregs[rd] = val;
  get32_unaligned_check(val, addr + 4);
  regs->uregs[rd2] = val;
 } else {
  put32_unaligned_check(regs->uregs[rd], addr);
  put32_unaligned_check(regs->uregs[rd2], addr + 4);
 }

 return TYPE_LDST;

 user:
 if (load) {
  unsigned long val;
  get32t_unaligned_check(val, addr);
  regs->uregs[rd] = val;
  get32t_unaligned_check(val, addr + 4);
  regs->uregs[rd2] = val;
 } else {
  put32t_unaligned_check(regs->uregs[rd], addr);
  put32t_unaligned_check(regs->uregs[rd2], addr + 4);
 }

 return TYPE_LDST;
 bad:
 return TYPE_ERROR;
 fault:
 return TYPE_FAULT;
}
