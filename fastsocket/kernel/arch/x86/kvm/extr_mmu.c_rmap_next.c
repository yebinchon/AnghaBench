
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_rmap_desc {struct kvm_rmap_desc* more; int ** sptes; } ;
struct kvm {int dummy; } ;


 int RMAP_EXT ;

__attribute__((used)) static u64 *rmap_next(struct kvm *kvm, unsigned long *rmapp, u64 *spte)
{
 struct kvm_rmap_desc *desc;
 struct kvm_rmap_desc *prev_desc;
 u64 *prev_spte;
 int i;

 if (!*rmapp)
  return ((void*)0);
 else if (!(*rmapp & 1)) {
  if (!spte)
   return (u64 *)*rmapp;
  return ((void*)0);
 }
 desc = (struct kvm_rmap_desc *)(*rmapp & ~1ul);
 prev_desc = ((void*)0);
 prev_spte = ((void*)0);
 while (desc) {
  for (i = 0; i < RMAP_EXT && desc->sptes[i]; ++i) {
   if (prev_spte == spte)
    return desc->sptes[i];
   prev_spte = desc->sptes[i];
  }
  desc = desc->more;
 }
 return ((void*)0);
}
