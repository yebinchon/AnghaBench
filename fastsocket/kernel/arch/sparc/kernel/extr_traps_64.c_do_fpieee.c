
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int DIE_TRAP ;
 scalar_t__ NOTIFY_STOP ;
 int SIGFPE ;
 int do_fpe_common (struct pt_regs*) ;
 scalar_t__ notify_die (int ,char*,struct pt_regs*,int ,int,int ) ;

void do_fpieee(struct pt_regs *regs)
{
 if (notify_die(DIE_TRAP, "fpu exception ieee", regs,
         0, 0x24, SIGFPE) == NOTIFY_STOP)
  return;

 do_fpe_common(regs);
}
