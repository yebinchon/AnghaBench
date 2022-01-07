
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
typedef unsigned long u64 ;
struct kvm {int dummy; } ;
typedef size_t gfn_t ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long* kvm_host_get_pmt (struct kvm*) ;

__attribute__((used)) static inline void kvm_set_pmt_entry(struct kvm *kvm, gfn_t gfn,
  u64 paddr, u64 mem_flags)
{
 uint64_t *pmt_base = kvm_host_get_pmt(kvm);
 unsigned long pte;

 pte = PAGE_ALIGN(paddr) | mem_flags;
 pmt_base[gfn] = pte;
}
