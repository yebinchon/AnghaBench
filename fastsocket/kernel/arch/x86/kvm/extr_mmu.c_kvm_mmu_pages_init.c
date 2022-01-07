
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_page_path {int ** parent; } ;
struct kvm_mmu_pages {scalar_t__ nr; } ;
struct TYPE_2__ {int level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;



__attribute__((used)) static void kvm_mmu_pages_init(struct kvm_mmu_page *parent,
          struct mmu_page_path *parents,
          struct kvm_mmu_pages *pvec)
{
 parents->parent[parent->role.level-1] = ((void*)0);
 pvec->nr = 0;
}
