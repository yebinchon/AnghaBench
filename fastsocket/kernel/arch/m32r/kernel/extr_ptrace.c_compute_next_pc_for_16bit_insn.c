
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PT_BPC ;
 int check_condition_bit (struct task_struct*) ;
 unsigned long get_stack_long (struct task_struct*,int ) ;
 int * reg_offset ;

__attribute__((used)) static void
compute_next_pc_for_16bit_insn(unsigned long insn, unsigned long pc,
          unsigned long *next_pc,
          struct task_struct *child)
{
 unsigned long op, op2, op3;
 unsigned long disp;
 unsigned long regno;
 int parallel = 0;

 if (insn & 0x00008000)
  parallel = 1;
 if (pc & 3)
  insn &= 0x7fff;
 else
  insn >>= 16;

 op = (insn >> 12) & 0xf;
 op2 = (insn >> 8) & 0xf;
 op3 = (insn >> 4) & 0xf;

 if (op == 0x7) {
  switch (op2) {
  case 0xd:
  case 0x9:
   if (!check_condition_bit(child)) {
    disp = (long)(insn << 24) >> 22;
    *next_pc = (pc & ~0x3) + disp;
    return;
   }
   break;
  case 0x8:
  case 0xc:
   if (check_condition_bit(child)) {
    disp = (long)(insn << 24) >> 22;
    *next_pc = (pc & ~0x3) + disp;
    return;
   }
   break;
  case 0xe:
  case 0xf:
   disp = (long)(insn << 24) >> 22;
   *next_pc = (pc & ~0x3) + disp;
   return;
   break;
  }
 } else if (op == 0x1) {
  switch (op2) {
  case 0x0:
   if (op3 == 0xf) {
   } else if (op3 == 0xd) {
    *next_pc = get_stack_long(child, PT_BPC);
    return;
   }
   break;
  case 0xc:
   if (op3 == 0xc && check_condition_bit(child)) {
    regno = insn & 0xf;
    *next_pc = get_stack_long(child,
         reg_offset[regno]);
    return;
   }
   break;
  case 0xd:
   if (op3 == 0xc && !check_condition_bit(child)) {
    regno = insn & 0xf;
    *next_pc = get_stack_long(child,
         reg_offset[regno]);
    return;
   }
   break;
  case 0xe:
  case 0xf:
   if (op3 == 0xc) {
    regno = insn & 0xf;
    *next_pc = get_stack_long(child,
         reg_offset[regno]);
    return;
   }
   break;
  }
 }
 if (parallel)
  *next_pc = pc + 4;
 else
  *next_pc = pc + 2;
}
