
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;
struct exception_table_entry {int fixup; } ;
typedef int UPT_IP ;


 struct exception_table_entry* search_exception_tables (unsigned long) ;

int arch_fixup(unsigned long address, struct uml_pt_regs *regs)
{
 const struct exception_table_entry *fixup;

 fixup = search_exception_tables(address);
 if (fixup != 0) {
  UPT_IP(regs) = fixup->fixup;
  return 1;
 }
 return 0;
}
