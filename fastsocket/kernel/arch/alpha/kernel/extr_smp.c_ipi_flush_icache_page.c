
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int __load_new_mm_context (struct mm_struct*) ;
 int asn_locked () ;
 TYPE_1__* current ;
 int flush_tlb_other (struct mm_struct*) ;

__attribute__((used)) static void
ipi_flush_icache_page(void *x)
{
 struct mm_struct *mm = (struct mm_struct *) x;
 if (mm == current->active_mm && !asn_locked())
  __load_new_mm_context(mm);
 else
  flush_tlb_other(mm);
}
