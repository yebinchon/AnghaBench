
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ page_id; } ;
struct mm_struct {TYPE_1__ context; } ;


 scalar_t__ NO_CONTEXT ;
 int alloc_context (struct mm_struct*) ;

void
get_mmu_context(struct mm_struct *mm)
{
 if(mm->context.page_id == NO_CONTEXT)
  alloc_context(mm);
}
