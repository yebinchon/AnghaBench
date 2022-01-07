
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs; } ;
struct task_struct {TYPE_1__ thread; } ;







 unsigned long PT_REG (int *,int) ;

 int TIF_IA32 ;
 int test_tsk_thread_flag (struct task_struct*,int ) ;

unsigned long getreg(struct task_struct *child, int regno)
{
 unsigned long retval = ~0UL;
 switch (regno) {
 case 130:
 case 129:
 case 132:
 case 131:
 case 128:
 case 133:
  retval = 0xffff;

 default:
  retval &= PT_REG(&child->thread.regs, regno);




 }
 return retval;
}
