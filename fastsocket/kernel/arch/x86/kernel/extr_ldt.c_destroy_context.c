
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int ldt; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;


 int LDT_ENTRY_SIZE ;
 int PAGE_SIZE ;
 int clear_LDT () ;
 TYPE_2__* current ;
 int paravirt_free_ldt (int ,int) ;
 int put_page (int ) ;
 int vfree (int ) ;
 int virt_to_page (int ) ;

void destroy_context(struct mm_struct *mm)
{
 if (mm->context.size) {





  paravirt_free_ldt(mm->context.ldt, mm->context.size);
  if (mm->context.size * LDT_ENTRY_SIZE > PAGE_SIZE)
   vfree(mm->context.ldt);
  else
   put_page(virt_to_page(mm->context.ldt));
  mm->context.size = 0;
 }
}
