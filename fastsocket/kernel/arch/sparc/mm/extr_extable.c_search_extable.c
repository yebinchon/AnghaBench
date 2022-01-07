
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {int fixup; unsigned long insn; } ;



const struct exception_table_entry *
search_extable(const struct exception_table_entry *start,
        const struct exception_table_entry *last,
        unsigned long value)
{
 const struct exception_table_entry *walk;
 for (walk = start; walk <= last; walk++) {
  if (walk->fixup == 0) {

   walk++;
   continue;
  }


  if (walk->fixup == -1)
   continue;

  if (walk->insn == value)
   return walk;
 }


 for (walk = start; walk <= (last - 1); walk++) {
  if (walk->fixup)
   continue;

  if (walk[0].insn <= value && walk[1].insn > value)
   return walk;

  walk++;
 }

        return ((void*)0);
}
