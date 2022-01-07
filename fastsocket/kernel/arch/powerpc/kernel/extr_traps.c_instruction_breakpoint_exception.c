
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int nip; } ;


 int DIE_IABR_MATCH ;
 scalar_t__ NOTIFY_STOP ;
 int SIGTRAP ;
 int TRAP_BRKPT ;
 int _exception (int ,struct pt_regs*,int ,int ) ;
 scalar_t__ debugger_iabr_match (struct pt_regs*) ;
 scalar_t__ notify_die (int ,char*,struct pt_regs*,int,int,int ) ;

void instruction_breakpoint_exception(struct pt_regs *regs)
{
 if (notify_die(DIE_IABR_MATCH, "iabr_match", regs, 5,
     5, SIGTRAP) == NOTIFY_STOP)
  return;
 if (debugger_iabr_match(regs))
  return;
 _exception(SIGTRAP, regs, TRAP_BRKPT, regs->nip);
}
