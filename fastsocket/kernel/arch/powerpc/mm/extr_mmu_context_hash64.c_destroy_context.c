
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int NO_CONTEXT ;
 int idr_remove (int *,int ) ;
 int mmu_context_idr ;
 int mmu_context_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void destroy_context(struct mm_struct *mm)
{
 spin_lock(&mmu_context_lock);
 idr_remove(&mmu_context_idr, mm->context.id);
 spin_unlock(&mmu_context_lock);

 mm->context.id = NO_CONTEXT;
}
