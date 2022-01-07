
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int compute_next_pc_for_16bit_insn (unsigned long,unsigned long,unsigned long*,struct task_struct*) ;
 int compute_next_pc_for_32bit_insn (unsigned long,unsigned long,unsigned long*,struct task_struct*) ;

__attribute__((used)) static inline void
compute_next_pc(unsigned long insn, unsigned long pc,
  unsigned long *next_pc, struct task_struct *child)
{
 if (insn & 0x80000000)
  compute_next_pc_for_32bit_insn(insn, pc, next_pc, child);
 else
  compute_next_pc_for_16bit_insn(insn, pc, next_pc, child);
}
