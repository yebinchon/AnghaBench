
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct fpustate {int dummy; } ;
struct TYPE_2__ {int* xfsr; } ;


 int DIE_TRAP ;
 struct fpustate* FPUSTATE ;
 scalar_t__ NOTIFY_STOP ;
 int SIGFPE ;
 TYPE_1__* current_thread_info () ;
 int do_fpe_common (struct pt_regs*) ;
 int do_mathemu (struct pt_regs*,struct fpustate*) ;
 scalar_t__ notify_die (int ,char*,struct pt_regs*,int ,int,int ) ;

void do_fpother(struct pt_regs *regs)
{
 struct fpustate *f = FPUSTATE;
 int ret = 0;

 if (notify_die(DIE_TRAP, "fpu exception other", regs,
         0, 0x25, SIGFPE) == NOTIFY_STOP)
  return;

 switch ((current_thread_info()->xfsr[0] & 0x1c000)) {
 case (2 << 14):
 case (3 << 14):
  ret = do_mathemu(regs, f);
  break;
 }
 if (ret)
  return;
 do_fpe_common(regs);
}
