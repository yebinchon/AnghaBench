
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long debugreg0; unsigned long debugreg1; unsigned long debugreg2; unsigned long debugreg3; unsigned long debugreg6; unsigned long debugreg7; } ;
struct task_struct {TYPE_1__ thread; } ;


 unsigned long DR7_MASK ;
 unsigned long DR_CONTROL_RESERVED ;
 int EIO ;
 int TIF_DEBUG ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 unsigned long debugreg_addr_limit (struct task_struct*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ptrace_set_debugreg(struct task_struct *child,
          int n, unsigned long data)
{
 int i;

 if (unlikely(n == 4 || n == 5))
  return -EIO;

 if (n < 4 && unlikely(data >= debugreg_addr_limit(child)))
  return -EIO;

 switch (n) {
 case 0: child->thread.debugreg0 = data; break;
 case 1: child->thread.debugreg1 = data; break;
 case 2: child->thread.debugreg2 = data; break;
 case 3: child->thread.debugreg3 = data; break;

 case 6:
  if ((data & ~0xffffffffUL) != 0)
   return -EIO;
  child->thread.debugreg6 = data;
  break;

 case 7:
  data &= ~DR_CONTROL_RESERVED;
  for (i = 0; i < 4; i++)
   if ((0x5554 >> ((data >> (16 + 4*i)) & 0xf)) & 1)
    return -EIO;
  child->thread.debugreg7 = data;
  if (data)
   set_tsk_thread_flag(child, TIF_DEBUG);
  else
   clear_tsk_thread_flag(child, TIF_DEBUG);
  break;
 }

 return 0;
}
