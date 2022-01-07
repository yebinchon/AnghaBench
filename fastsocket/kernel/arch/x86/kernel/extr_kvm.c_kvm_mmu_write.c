
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct TYPE_2__ {int op; } ;
struct kvm_mmu_op_write_pte {unsigned long pte_phys; int pte_val; TYPE_1__ header; } ;
typedef unsigned long __u64 ;


 int KVM_MMU_OP_WRITE_PTE ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ __pa (void*) ;
 struct page* kmap_atomic_to_page (void*) ;
 int kvm_deferred_mmu_op (struct kvm_mmu_op_write_pte*,int) ;
 unsigned long page_to_pfn (struct page*) ;

__attribute__((used)) static void kvm_mmu_write(void *dest, u64 val)
{
 __u64 pte_phys;
 struct kvm_mmu_op_write_pte wpte;
 pte_phys = (unsigned long)__pa(dest);

 wpte.header.op = KVM_MMU_OP_WRITE_PTE;
 wpte.pte_val = val;
 wpte.pte_phys = pte_phys;

 kvm_deferred_mmu_op(&wpte, sizeof wpte);
}
