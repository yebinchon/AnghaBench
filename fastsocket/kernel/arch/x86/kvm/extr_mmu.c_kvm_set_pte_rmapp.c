
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm {int dummy; } ;
typedef int pte_t ;
typedef scalar_t__ pfn_t ;


 int BUG_ON (int) ;
 int PAGE_SHIFT ;
 int PT64_BASE_ADDR_MASK ;
 int PT_WRITABLE_MASK ;
 int SPTE_HOST_WRITEABLE ;
 int WARN_ON (int ) ;
 int __set_spte (int*,int) ;
 int is_shadow_present_pte (int) ;
 scalar_t__ is_writeble_pte (int) ;
 int kvm_flush_remote_tlbs (struct kvm*) ;
 int kvm_set_pfn_dirty (int ) ;
 int pte_huge (int ) ;
 scalar_t__ pte_pfn (int ) ;
 scalar_t__ pte_write (int ) ;
 int* rmap_next (struct kvm*,unsigned long*,int*) ;
 int rmap_printk (char*,int*,int) ;
 int rmap_remove (struct kvm*,int*) ;
 int shadow_trap_nonpresent_pte ;
 int spte_to_pfn (int) ;

__attribute__((used)) static int kvm_set_pte_rmapp(struct kvm *kvm, unsigned long *rmapp,
        unsigned long data)
{
 int need_flush = 0;
 u64 *spte, new_spte;
 pte_t *ptep = (pte_t *)data;
 pfn_t new_pfn;

 WARN_ON(pte_huge(*ptep));
 new_pfn = pte_pfn(*ptep);
 spte = rmap_next(kvm, rmapp, ((void*)0));
 while (spte) {
  BUG_ON(!is_shadow_present_pte(*spte));
  rmap_printk("kvm_set_pte_rmapp: spte %p %llx\n", spte, *spte);
  need_flush = 1;
  if (pte_write(*ptep)) {
   rmap_remove(kvm, spte);
   __set_spte(spte, shadow_trap_nonpresent_pte);
   spte = rmap_next(kvm, rmapp, ((void*)0));
  } else {
   new_spte = *spte &~ (PT64_BASE_ADDR_MASK);
   new_spte |= (u64)new_pfn << PAGE_SHIFT;

   new_spte &= ~PT_WRITABLE_MASK;
   new_spte &= ~SPTE_HOST_WRITEABLE;
   if (is_writeble_pte(*spte))
    kvm_set_pfn_dirty(spte_to_pfn(*spte));
   __set_spte(spte, new_spte);
   spte = rmap_next(kvm, rmapp, spte);
  }
 }
 if (need_flush)
  kvm_flush_remote_tlbs(kvm);

 return 0;
}
