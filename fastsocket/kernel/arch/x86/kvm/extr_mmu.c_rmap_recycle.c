
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int kvm; } ;
struct TYPE_2__ {int level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
typedef int gfn_t ;


 int __pa (int *) ;
 unsigned long* gfn_to_rmap (int ,int ,int ) ;
 int kvm_flush_remote_tlbs (int ) ;
 int kvm_unmap_rmapp (int ,unsigned long*,int ) ;
 struct kvm_mmu_page* page_header (int ) ;
 int unalias_gfn (int ,int ) ;

__attribute__((used)) static void rmap_recycle(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
{
 unsigned long *rmapp;
 struct kvm_mmu_page *sp;

 sp = page_header(__pa(spte));

 gfn = unalias_gfn(vcpu->kvm, gfn);
 rmapp = gfn_to_rmap(vcpu->kvm, gfn, sp->role.level);

 kvm_unmap_rmapp(vcpu->kvm, rmapp, 0);
 kvm_flush_remote_tlbs(vcpu->kvm);
}
