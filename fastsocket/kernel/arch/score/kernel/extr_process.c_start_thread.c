
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long cp0_psr; unsigned long cp0_epc; unsigned long* regs; } ;


 unsigned long KU_MASK ;
 unsigned long KU_USER ;

void start_thread(struct pt_regs *regs, unsigned long pc, unsigned long sp)
{
 unsigned long status;


 status = regs->cp0_psr & ~(KU_MASK);
 status |= KU_USER;
 regs->cp0_psr = status;
 regs->cp0_epc = pc;
 regs->regs[0] = sp;
}
