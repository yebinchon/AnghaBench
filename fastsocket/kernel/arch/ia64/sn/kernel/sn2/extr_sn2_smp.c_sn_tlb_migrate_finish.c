
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mm_users; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int atomic_read (int *) ;
 TYPE_1__* current ;
 int flush_tlb_mm (struct mm_struct*) ;

void sn_tlb_migrate_finish(struct mm_struct *mm)
{

 if (mm == current->mm && mm && atomic_read(&mm->mm_users) == 1)
  flush_tlb_mm(mm);
}
