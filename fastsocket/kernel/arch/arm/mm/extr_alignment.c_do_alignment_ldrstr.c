
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned int* uregs; } ;


 scalar_t__ LDST_L_BIT (unsigned long) ;
 int LDST_P_BIT (unsigned long) ;
 scalar_t__ LDST_W_BIT (unsigned long) ;
 unsigned int RD_BITS (unsigned long) ;
 int TYPE_FAULT ;
 int TYPE_LDST ;
 int ai_word ;
 int get32_unaligned_check (unsigned int,unsigned long) ;
 int get32t_unaligned_check (unsigned int,unsigned long) ;
 int put32_unaligned_check (unsigned int,unsigned long) ;
 int put32t_unaligned_check (unsigned int,unsigned long) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int
do_alignment_ldrstr(unsigned long addr, unsigned long instr, struct pt_regs *regs)
{
 unsigned int rd = RD_BITS(instr);

 ai_word += 1;

 if ((!LDST_P_BIT(instr) && LDST_W_BIT(instr)) || user_mode(regs))
  goto trans;

 if (LDST_L_BIT(instr)) {
  unsigned int val;
  get32_unaligned_check(val, addr);
  regs->uregs[rd] = val;
 } else
  put32_unaligned_check(regs->uregs[rd], addr);
 return TYPE_LDST;

 trans:
 if (LDST_L_BIT(instr)) {
  unsigned int val;
  get32t_unaligned_check(val, addr);
  regs->uregs[rd] = val;
 } else
  put32t_unaligned_check(regs->uregs[rd], addr);
 return TYPE_LDST;

 fault:
 return TYPE_FAULT;
}
