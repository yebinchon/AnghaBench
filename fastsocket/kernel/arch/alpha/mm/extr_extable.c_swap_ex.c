
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int unit; } ;
struct exception_table_entry {int insn; TYPE_1__ fixup; } ;


 unsigned long ex_to_addr (struct exception_table_entry*) ;

__attribute__((used)) static void swap_ex(void *a, void *b, int size)
{
 struct exception_table_entry *ex_a = a, *ex_b = b;
 unsigned long addr_a = ex_to_addr(ex_a), addr_b = ex_to_addr(ex_b);
 unsigned int t = ex_a->fixup.unit;

 ex_a->fixup.unit = ex_b->fixup.unit;
 ex_b->fixup.unit = t;
 ex_a->insn = (int)(addr_b - (unsigned long)&ex_a->insn);
 ex_b->insn = (int)(addr_a - (unsigned long)&ex_b->insn);
}
