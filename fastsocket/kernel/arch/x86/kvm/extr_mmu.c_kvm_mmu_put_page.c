
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mmu_page {int dummy; } ;


 int mmu_page_remove_parent_pte (struct kvm_mmu_page*,int *) ;

__attribute__((used)) static void kvm_mmu_put_page(struct kvm_mmu_page *sp, u64 *parent_pte)
{
 mmu_page_remove_parent_pte(sp, parent_pte);
}
