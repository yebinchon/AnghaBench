
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl1_traplog {int dummy; } ;
struct pt_regs {int dummy; } ;


 int DIE_TRAP_TL1 ;
 scalar_t__ NOTIFY_STOP ;
 int SIGTRAP ;
 int dump_tl1_traplog (struct tl1_traplog*) ;
 scalar_t__ notify_die (int ,char*,struct pt_regs*,int ,int,int ) ;
 int sun4v_insn_access_exception (struct pt_regs*,unsigned long,unsigned long) ;

void sun4v_insn_access_exception_tl1(struct pt_regs *regs, unsigned long addr, unsigned long type_ctx)
{
 if (notify_die(DIE_TRAP_TL1, "instruction access exception tl1", regs,
         0, 0x8, SIGTRAP) == NOTIFY_STOP)
  return;

 dump_tl1_traplog((struct tl1_traplog *)(regs + 1));
 sun4v_insn_access_exception(regs, addr, type_ctx);
}
