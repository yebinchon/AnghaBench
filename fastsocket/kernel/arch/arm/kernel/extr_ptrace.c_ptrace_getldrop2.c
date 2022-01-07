
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long get_user_reg (struct task_struct*,unsigned long) ;

__attribute__((used)) static unsigned long
ptrace_getldrop2(struct task_struct *child, unsigned long insn)
{
 unsigned long val;
 int shift;
 int type;

 val = get_user_reg(child, insn & 15);
 shift = (insn >> 7) & 31;
 type = (insn >> 5) & 3;

 switch (type) {
 case 0: val <<= shift; break;
 case 1: val >>= shift; break;
 case 2:
  val = (((signed long)val) >> shift);
  break;
 case 3:
   val = (val >> shift) | (val << (32 - shift));
  break;
 }
 return val;
}
