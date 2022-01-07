
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {int dummy; } ;
struct page {int dummy; } ;
struct kvmppc_vcpu_e500 {struct page*** shadow_pages; struct tlbe** shadow_tlb; } ;


 scalar_t__ get_tlb_v (struct tlbe*) ;
 int kvm_release_page_clean (struct page*) ;
 int kvm_release_page_dirty (struct page*) ;
 scalar_t__ tlbe_is_writable (struct tlbe*) ;

__attribute__((used)) static void kvmppc_e500_shadow_release(struct kvmppc_vcpu_e500 *vcpu_e500,
  int tlbsel, int esel)
{
 struct tlbe *stlbe = &vcpu_e500->shadow_tlb[tlbsel][esel];
 struct page *page = vcpu_e500->shadow_pages[tlbsel][esel];

 if (page) {
  vcpu_e500->shadow_pages[tlbsel][esel] = ((void*)0);

  if (get_tlb_v(stlbe)) {
   if (tlbe_is_writable(stlbe))
    kvm_release_page_dirty(page);
   else
    kvm_release_page_clean(page);
  }
 }
}
