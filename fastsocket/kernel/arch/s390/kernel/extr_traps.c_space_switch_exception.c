
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;


 int ILL_PRVOPC ;
 int PSW_ASC_HOME ;
 int PSW_MASK_PSTATE ;
 int SIGILL ;
 int do_trap (struct pt_regs*,long,int ,int ,char*) ;

__attribute__((used)) static void space_switch_exception(struct pt_regs * regs, long int_code)
{

 if (regs->psw.mask & PSW_MASK_PSTATE)
  regs->psw.mask |= PSW_ASC_HOME;

 do_trap(regs, int_code, SIGILL, ILL_PRVOPC, "space switch event");
}
