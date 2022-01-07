
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_pages {int dummy; } ;
struct kvm_mmu_page {int unsync_children; } ;


 int __mmu_unsync_walk (struct kvm_mmu_page*,struct kvm_mmu_pages*) ;
 int mmu_pages_add (struct kvm_mmu_pages*,struct kvm_mmu_page*,int ) ;

__attribute__((used)) static int mmu_unsync_walk(struct kvm_mmu_page *sp,
      struct kvm_mmu_pages *pvec)
{
 if (!sp->unsync_children)
  return 0;

 mmu_pages_add(pvec, sp, 0);
 return __mmu_unsync_walk(sp, pvec);
}
