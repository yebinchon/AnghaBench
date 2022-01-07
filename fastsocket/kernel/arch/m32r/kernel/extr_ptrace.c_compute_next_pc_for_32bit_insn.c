
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int check_condition_bit (struct task_struct*) ;
 int check_condition_src (unsigned long,unsigned long,unsigned long,struct task_struct*) ;

__attribute__((used)) static void
compute_next_pc_for_32bit_insn(unsigned long insn, unsigned long pc,
          unsigned long *next_pc,
          struct task_struct *child)
{
 unsigned long op;
 unsigned long op2;
 unsigned long disp;
 unsigned long regno1, regno2;

 op = (insn >> 28) & 0xf;
 if (op == 0xf) {
  op2 = (insn >> 24) & 0xf;
  switch (op2) {
  case 0xd:
  case 0x9:
   if (!check_condition_bit(child)) {
    disp = (long)(insn << 8) >> 6;
    *next_pc = (pc & ~0x3) + disp;
    return;
   }
   break;
  case 0x8:
  case 0xc:
   if (check_condition_bit(child)) {
    disp = (long)(insn << 8) >> 6;
    *next_pc = (pc & ~0x3) + disp;
    return;
   }
   break;
  case 0xe:
  case 0xf:
   disp = (long)(insn << 8) >> 6;
   *next_pc = (pc & ~0x3) + disp;
   return;
  }
 } else if (op == 0xb) {
  op2 = (insn >> 20) & 0xf;
  switch (op2) {
  case 0x0:
  case 0x1:
  case 0x8:
  case 0x9:
  case 0xa:
  case 0xb:
  case 0xc:
  case 0xd:
   regno1 = ((insn >> 24) & 0xf);
   regno2 = ((insn >> 16) & 0xf);
   if (check_condition_src(op2, regno1, regno2, child)) {
    disp = (long)(insn << 16) >> 14;
    *next_pc = (pc & ~0x3) + disp;
    return;
   }
   break;
  }
 }
 *next_pc = pc + 4;
}
