
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int tstate; int tpc; scalar_t__ tnpc; } ;
struct exception_table_entry {int fixup; } ;


 unsigned char ASI_P ;
 int FAULT_CODE_ITLB ;
 int FAULT_CODE_WRITE ;
 int SIGSEGV ;
 int TSTATE_PRIV ;
 int current ;
 int do_fault_siginfo (int,int ,struct pt_regs*,unsigned int,int) ;
 int handle_ld_nf (unsigned int,struct pt_regs*) ;
 int handle_ldf_stq (unsigned int,struct pt_regs*) ;
 struct exception_table_entry* search_exception_tables (int ) ;
 int unhandled_fault (unsigned long,int ,struct pt_regs*) ;

__attribute__((used)) static void do_kernel_fault(struct pt_regs *regs, int si_code, int fault_code,
       unsigned int insn, unsigned long address)
{
 unsigned char asi = ASI_P;

 if ((!insn) && (regs->tstate & TSTATE_PRIV))
  goto cannot_handle;






 if (!(fault_code & (FAULT_CODE_WRITE|FAULT_CODE_ITLB)) &&
     (insn & 0xc0800000) == 0xc0800000) {
  if (insn & 0x2000)
   asi = (regs->tstate >> 24);
  else
   asi = (insn >> 5);
  if ((asi & 0xf2) == 0x82) {
   if (insn & 0x1000000) {
    handle_ldf_stq(insn, regs);
   } else {




    handle_ld_nf(insn, regs);
   }
   return;
  }
 }


 if (regs->tstate & TSTATE_PRIV) {
  const struct exception_table_entry *entry;

  entry = search_exception_tables(regs->tpc);
  if (entry) {
   regs->tpc = entry->fixup;
   regs->tnpc = regs->tpc + 4;
   return;
  }
 } else {



  do_fault_siginfo(si_code, SIGSEGV, regs, insn, fault_code);
  return;
 }

cannot_handle:
 unhandled_fault (address, current, regs);
}
