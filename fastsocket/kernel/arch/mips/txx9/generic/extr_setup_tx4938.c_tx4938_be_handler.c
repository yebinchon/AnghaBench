
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int cp0_cause; unsigned long long cp0_epc; } ;
struct TYPE_2__ {int toea; int ccfg; } ;


 scalar_t__ ____raw_readq (int *) ;
 int console_verbose () ;
 int panic (char*) ;
 int pr_err (char*,unsigned long long,unsigned long long) ;
 int show_registers (struct pt_regs*) ;
 int tx4927_report_pcic_status () ;
 TYPE_1__* tx4938_ccfgptr ;

__attribute__((used)) static int tx4938_be_handler(struct pt_regs *regs, int is_fixup)
{
 int data = regs->cp0_cause & 4;
 console_verbose();
 pr_err("%cBE exception at %#lx\n", data ? 'D' : 'I', regs->cp0_epc);
 pr_err("ccfg:%llx, toea:%llx\n",
        (unsigned long long)____raw_readq(&tx4938_ccfgptr->ccfg),
        (unsigned long long)____raw_readq(&tx4938_ccfgptr->toea));



 show_registers(regs);
 panic("BusError!");
}
