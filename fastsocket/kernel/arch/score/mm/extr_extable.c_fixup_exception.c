
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cp0_epc; } ;
struct exception_table_entry {int fixup; } ;


 struct exception_table_entry* search_exception_tables (int ) ;

int fixup_exception(struct pt_regs *regs)
{
 const struct exception_table_entry *fixup;

 fixup = search_exception_tables(regs->cp0_epc);
 if (fixup) {
  regs->cp0_epc = fixup->fixup;
  return 1;
 }
 return 0;
}
