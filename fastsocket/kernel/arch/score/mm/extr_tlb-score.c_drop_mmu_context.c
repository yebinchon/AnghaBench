
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int context; } ;


 int ASID_MASK ;
 int get_new_mmu_context (struct mm_struct*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pevn_set (int) ;

__attribute__((used)) static inline void
drop_mmu_context(struct mm_struct *mm)
{
 unsigned long flags;

 local_irq_save(flags);
 get_new_mmu_context(mm);
 pevn_set(mm->context & ASID_MASK);
 local_irq_restore(flags);
}
