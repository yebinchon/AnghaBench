
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct reg_window32 {int * locals; } ;
struct reg_window {unsigned long* locals; } ;
struct pt_regs {unsigned long* u_regs; int tstate; } ;


 unsigned long STACK_BIAS ;
 int TIF_32BIT ;
 int TSTATE_PRIV ;
 size_t UREG_FP ;
 scalar_t__ test_thread_flag (int ) ;

__attribute__((used)) static unsigned long *fetch_reg_addr(unsigned int reg, struct pt_regs *regs)
{
 if (reg < 16)
  return &regs->u_regs[reg];
 if (regs->tstate & TSTATE_PRIV) {
  struct reg_window *win;
  win = (struct reg_window *)(regs->u_regs[UREG_FP] + STACK_BIAS);
  return &win->locals[reg - 16];
 } else if (test_thread_flag(TIF_32BIT)) {
  struct reg_window32 *win32;
  win32 = (struct reg_window32 *)((unsigned long)((u32)regs->u_regs[UREG_FP]));
  return (unsigned long *)&win32->locals[reg - 16];
 } else {
  struct reg_window *win;
  win = (struct reg_window *)(regs->u_regs[UREG_FP] + STACK_BIAS);
  return &win->locals[reg - 16];
 }
}
