
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu_pages {int nr; TYPE_1__* page; } ;
struct kvm_mmu_page {scalar_t__ unsync; } ;
struct TYPE_2__ {int idx; struct kvm_mmu_page* sp; } ;


 size_t KVM_PAGE_ARRAY_NR ;

__attribute__((used)) static int mmu_pages_add(struct kvm_mmu_pages *pvec, struct kvm_mmu_page *sp,
    int idx)
{
 int i;

 if (sp->unsync)
  for (i=0; i < pvec->nr; i++)
   if (pvec->page[i].sp == sp)
    return 0;

 pvec->page[pvec->nr].sp = sp;
 pvec->page[pvec->nr].idx = idx;
 pvec->nr++;
 return (pvec->nr == KVM_PAGE_ARRAY_NR);
}
