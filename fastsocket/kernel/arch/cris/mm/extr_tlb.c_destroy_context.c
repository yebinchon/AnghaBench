
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ page_id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int D (int ) ;
 scalar_t__ NO_CONTEXT ;
 int flush_tlb_mm (struct mm_struct*) ;
 int ** page_id_map ;
 int printk (char*,scalar_t__,struct mm_struct*) ;

void
destroy_context(struct mm_struct *mm)
{
 if(mm->context.page_id != NO_CONTEXT) {
  D(printk("destroy_context %d (%p)\n", mm->context.page_id, mm));
  flush_tlb_mm(mm);
  page_id_map[mm->context.page_id] = ((void*)0);
 }
}
