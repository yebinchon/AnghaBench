
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_table_entry {unsigned long region_start; unsigned long region_end; } ;
struct unwind_table {int length; struct unwind_table_entry* table; } ;



__attribute__((used)) static inline const struct unwind_table_entry *
find_unwind_entry_in_table(const struct unwind_table *table, unsigned long addr)
{
 const struct unwind_table_entry *e = ((void*)0);
 unsigned long lo, hi, mid;

 lo = 0;
 hi = table->length - 1;

 while (lo <= hi) {
  mid = (hi - lo) / 2 + lo;
  e = &table->table[mid];
  if (addr < e->region_start)
   hi = mid - 1;
  else if (addr > e->region_end)
   lo = mid + 1;
  else
   return e;
 }

 return ((void*)0);
}
