
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cp0_cause; int cp0_epc; } ;


 int MIPS_BE_FIXUP ;
 int SIGBUS ;
 int current ;
 int dump_tlb_all () ;
 int force_sig (int ,int ) ;
 int printk (char*,char,int ) ;
 int show_regs (struct pt_regs*) ;

__attribute__((used)) static int ip32_be_handler(struct pt_regs *regs, int is_fixup)
{
 int data = regs->cp0_cause & 4;

 if (is_fixup)
  return MIPS_BE_FIXUP;

 printk("Got %cbe at 0x%lx\n", data ? 'd' : 'i', regs->cp0_epc);
 show_regs(regs);
 dump_tlb_all();
 while(1);
 force_sig(SIGBUS, current);
}
