
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* u_regs; } ;


 unsigned long PAGE_MASK ;
 size_t UREG_FP ;
 int force_user_fault (unsigned long,int ) ;

void window_ret_fault(struct pt_regs *regs)
{
 unsigned long sp;

 sp = regs->u_regs[UREG_FP];
 if(((sp + 0x38) & PAGE_MASK) != (sp & PAGE_MASK))
  force_user_fault(sp + 0x38, 0);
 force_user_fault(sp, 0);
}
