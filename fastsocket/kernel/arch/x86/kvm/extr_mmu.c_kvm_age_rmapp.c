
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm {int dummy; } ;


 int BUG_ON (int) ;
 int clear_bit (scalar_t__,unsigned long*) ;
 scalar_t__ ffs (int) ;
 int is_shadow_present_pte (int) ;
 int kvm_unmap_rmapp (struct kvm*,unsigned long*,unsigned long) ;
 int* rmap_next (struct kvm*,unsigned long*,int*) ;
 int shadow_accessed_mask ;

__attribute__((used)) static int kvm_age_rmapp(struct kvm *kvm, unsigned long *rmapp,
    unsigned long data)
{
 u64 *spte;
 int young = 0;
 if (!shadow_accessed_mask)
  return kvm_unmap_rmapp(kvm, rmapp, data);

 spte = rmap_next(kvm, rmapp, ((void*)0));
 while (spte) {
  int _young;
  u64 _spte = *spte;
  BUG_ON(!is_shadow_present_pte(_spte));
  _young = _spte & shadow_accessed_mask;
  if (_young) {
   young = 1;
   clear_bit((ffs(shadow_accessed_mask) - 1),
     (unsigned long *)spte);
  }
  spte = rmap_next(kvm, rmapp, spte);
 }
 return young;
}
