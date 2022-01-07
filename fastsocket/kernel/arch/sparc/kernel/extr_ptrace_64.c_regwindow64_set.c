
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win32 ;
struct task_struct {int dummy; } ;
struct reg_window32 {int * ins; int * locals; } ;
struct reg_window {int * ins; int * locals; } ;
struct pt_regs {unsigned long* u_regs; } ;


 int EFAULT ;
 scalar_t__ STACK_BIAS ;
 int TIF_32BIT ;
 size_t UREG_I6 ;
 int current ;
 scalar_t__ set_to_target (struct task_struct*,unsigned long,struct reg_window32*,int) ;
 scalar_t__ test_tsk_thread_flag (int ,int ) ;

__attribute__((used)) static int regwindow64_set(struct task_struct *target,
      const struct pt_regs *regs,
      struct reg_window *wbuf)
{
 unsigned long rw_addr = regs->u_regs[UREG_I6];

 if (test_tsk_thread_flag(current, TIF_32BIT)) {
  struct reg_window32 win32;
  int i;

  for (i = 0; i < 8; i++)
   win32.locals[i] = wbuf->locals[i];
  for (i = 0; i < 8; i++)
   win32.ins[i] = wbuf->ins[i];

  if (set_to_target(target, rw_addr, &win32, sizeof(win32)))
   return -EFAULT;
 } else {
  rw_addr += STACK_BIAS;
  if (set_to_target(target, rw_addr, wbuf, sizeof(*wbuf)))
   return -EFAULT;
 }

 return 0;
}
