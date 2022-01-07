
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int ia32_boot_gdt ;


 unsigned long IA32_LDT_ENTRIES ;
 scalar_t__ IA32_LDT_OFFSET ;
 int IA32_PAGE_SIZE ;
 int IA32_SEGSEL_INDEX_SHIFT ;
 int IA32_SEGSEL_TI ;
 unsigned long IA32_SEG_UNSCRAMBLE (unsigned long) ;
 unsigned long** cpu_gdt_table ;
 size_t smp_processor_id () ;

__attribute__((used)) static unsigned long
load_desc (u16 selector)
{
 unsigned long *table, limit, index;

 if (!selector)
  return 0;
 if (selector & IA32_SEGSEL_TI) {
  table = (unsigned long *) IA32_LDT_OFFSET;
  limit = IA32_LDT_ENTRIES;
 } else {
  table = cpu_gdt_table[smp_processor_id()];
  limit = IA32_PAGE_SIZE / sizeof(ia32_boot_gdt[0]);
 }
 index = selector >> IA32_SEGSEL_INDEX_SHIFT;
 if (index >= limit)
  return 0;
 return IA32_SEG_UNSCRAMBLE(table[index]);
}
