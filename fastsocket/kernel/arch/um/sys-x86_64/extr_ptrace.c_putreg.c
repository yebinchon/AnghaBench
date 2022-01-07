
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs; } ;
struct task_struct {TYPE_1__ thread; } ;





 int EIO ;

 unsigned long FLAG_MASK ;




 unsigned long PT_REGS_EFLAGS (int *) ;
 int PT_REGS_SET (int *,int,unsigned long) ;

 int TIF_IA32 ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

int putreg(struct task_struct *child, int regno, unsigned long value)
{
 unsigned long tmp;
 switch (regno) {
 case 132:
 case 130:
 case 135:
 case 133:
 case 128:
 case 136:
  if (value && (value & 3) != 3)
   return -EIO;
  value &= 0xffff;
  break;

 case 131:
 case 129:
  if (!((value >> 48) == 0 || (value >> 48) == 0xffff))
   return -EIO;
  break;

 case 134:
  value &= FLAG_MASK;
  tmp = PT_REGS_EFLAGS(&child->thread.regs) & ~FLAG_MASK;
  value |= tmp;
  break;
 }

 PT_REGS_SET(&child->thread.regs, regno, value);
 return 0;
}
