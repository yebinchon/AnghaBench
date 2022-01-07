
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int kvm; } ;
struct kvm_rmap_desc {int ** sptes; struct kvm_rmap_desc* more; } ;
struct TYPE_2__ {int level; } ;
struct kvm_mmu_page {TYPE_1__ role; int * spt; int * gfns; } ;
typedef int gfn_t ;


 int RMAP_EXT ;
 int __pa (int *) ;
 unsigned long* gfn_to_rmap (int ,int ,int ) ;
 int is_rmap_spte (int ) ;
 void* mmu_alloc_rmap_desc (struct kvm_vcpu*) ;
 struct kvm_mmu_page* page_header (int ) ;
 int rmap_printk (char*,int *,int ) ;
 int unalias_gfn (int ,int ) ;

__attribute__((used)) static int rmap_add(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
{
 struct kvm_mmu_page *sp;
 struct kvm_rmap_desc *desc;
 unsigned long *rmapp;
 int i, count = 0;

 if (!is_rmap_spte(*spte))
  return count;
 gfn = unalias_gfn(vcpu->kvm, gfn);
 sp = page_header(__pa(spte));
 sp->gfns[spte - sp->spt] = gfn;
 rmapp = gfn_to_rmap(vcpu->kvm, gfn, sp->role.level);
 if (!*rmapp) {
  rmap_printk("rmap_add: %p %llx 0->1\n", spte, *spte);
  *rmapp = (unsigned long)spte;
 } else if (!(*rmapp & 1)) {
  rmap_printk("rmap_add: %p %llx 1->many\n", spte, *spte);
  desc = mmu_alloc_rmap_desc(vcpu);
  desc->sptes[0] = (u64 *)*rmapp;
  desc->sptes[1] = spte;
  *rmapp = (unsigned long)desc | 1;
 } else {
  rmap_printk("rmap_add: %p %llx many->many\n", spte, *spte);
  desc = (struct kvm_rmap_desc *)(*rmapp & ~1ul);
  while (desc->sptes[RMAP_EXT-1] && desc->more) {
   desc = desc->more;
   count += RMAP_EXT;
  }
  if (desc->sptes[RMAP_EXT-1]) {
   desc->more = mmu_alloc_rmap_desc(vcpu);
   desc = desc->more;
  }
  for (i = 0; desc->sptes[i]; ++i)
   ;
  desc->sptes[i] = spte;
 }
 return count;
}
