
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int tpc; int tnpc; int tstate; int * u_regs; } ;


 int TIF_32BIT ;
 size_t UREG_I0 ;
 scalar_t__ test_thread_flag (int ) ;
 int tstate_to_psr (int ) ;

void do_getpsr(struct pt_regs *regs)
{
 regs->u_regs[UREG_I0] = tstate_to_psr(regs->tstate);
 regs->tpc = regs->tnpc;
 regs->tnpc += 4;
 if (test_thread_flag(TIF_32BIT)) {
  regs->tpc &= 0xffffffff;
  regs->tnpc &= 0xffffffff;
 }
}
