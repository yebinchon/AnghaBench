
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {unsigned long insn; } ;


 struct exception_table_entry* check_exception_ranges (unsigned long) ;

const struct exception_table_entry *
search_extable(const struct exception_table_entry *first,
   const struct exception_table_entry *last,
   unsigned long value)
{
 const struct exception_table_entry *mid;

 mid = check_exception_ranges(value);
 if (mid)
  return mid;

        while (first <= last) {
  long diff;

  mid = (last - first) / 2 + first;
  diff = mid->insn - value;
                if (diff == 0)
                        return mid;
                else if (diff < 0)
                        first = mid+1;
                else
                        last = mid-1;
        }

        return ((void*)0);
}
