
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;


 int kvm_mmu_update_parents_unsync (struct kvm_mmu_page*) ;
 int mmu_parent_walk (struct kvm_vcpu*,struct kvm_mmu_page*,int ) ;
 int unsync_walk_fn ;

__attribute__((used)) static void kvm_mmu_mark_parents_unsync(struct kvm_vcpu *vcpu,
     struct kvm_mmu_page *sp)
{
 mmu_parent_walk(vcpu, sp, unsync_walk_fn);
 kvm_mmu_update_parents_unsync(sp);
}
