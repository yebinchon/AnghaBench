
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mm_users; } ;


 scalar_t__ atomic_read (int *) ;
 int fix_range (struct mm_struct*,unsigned long,unsigned long,int ) ;

void flush_tlb_mm_range(struct mm_struct *mm, unsigned long start,
   unsigned long end)
{




 if (atomic_read(&mm->mm_users) == 0)
  return;

 fix_range(mm, start, end, 0);
}
