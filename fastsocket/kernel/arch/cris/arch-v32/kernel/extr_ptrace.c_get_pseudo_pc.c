
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PT_ERP ;
 int PT_SPC ;
 unsigned long get_reg (struct task_struct*,int ) ;
 int insn_size (struct task_struct*,unsigned long) ;

__attribute__((used)) static unsigned long get_pseudo_pc(struct task_struct *child)
{

 unsigned long pc = get_reg(child, PT_ERP);

 if (pc & 0x1) {
  unsigned long spc = get_reg(child, PT_SPC);


  if (spc) {



   pc = spc;
  } else {


   pc += insn_size(child, pc & ~1) - 1;
  }
 }
 return pc;
}
