
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long get_user_reg (struct task_struct*,unsigned int) ;

__attribute__((used)) static unsigned long
ptrace_getrn(struct task_struct *child, unsigned long insn)
{
 unsigned int reg = (insn >> 16) & 15;
 unsigned long val;

 val = get_user_reg(child, reg);
 if (reg == 15)
  val += 8;

 return val;
}
