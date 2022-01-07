
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* pages; } ;
struct TYPE_4__ {int entry_count; TYPE_1__ u; } ;
struct mm_context {TYPE_2__ ldt; } ;


 int LDT_DIRECT_ENTRIES ;
 int LDT_ENTRIES_PER_PAGE ;
 int free_page (long) ;
 int ptrace_ldt ;

void free_ldt(struct mm_context *mm)
{
 int i;

 if (!ptrace_ldt && mm->ldt.entry_count > LDT_DIRECT_ENTRIES) {
  i = mm->ldt.entry_count / LDT_ENTRIES_PER_PAGE;
  while (i-- > 0)
   free_page((long) mm->ldt.u.pages[i]);
 }
 mm->ldt.entry_count = 0;
}
