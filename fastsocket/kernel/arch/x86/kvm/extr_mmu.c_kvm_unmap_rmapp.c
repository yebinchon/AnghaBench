
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm {int dummy; } ;


 int BUG_ON (int) ;
 int PT_PRESENT_MASK ;
 int __set_spte (int*,int ) ;
 int* rmap_next (struct kvm*,unsigned long*,int *) ;
 int rmap_printk (char*,int*,int) ;
 int rmap_remove (struct kvm*,int*) ;
 int shadow_trap_nonpresent_pte ;

__attribute__((used)) static int kvm_unmap_rmapp(struct kvm *kvm, unsigned long *rmapp,
      unsigned long data)
{
 u64 *spte;
 int need_tlb_flush = 0;

 while ((spte = rmap_next(kvm, rmapp, ((void*)0)))) {
  BUG_ON(!(*spte & PT_PRESENT_MASK));
  rmap_printk("kvm_rmap_unmap_hva: spte %p %llx\n", spte, *spte);
  rmap_remove(kvm, spte);
  __set_spte(spte, shadow_trap_nonpresent_pte);
  need_tlb_flush = 1;
 }
 return need_tlb_flush;
}
