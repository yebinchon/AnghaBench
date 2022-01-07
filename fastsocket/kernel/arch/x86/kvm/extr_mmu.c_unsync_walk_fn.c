
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;


 int kvm_mmu_update_parents_unsync (struct kvm_mmu_page*) ;

__attribute__((used)) static int unsync_walk_fn(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp)
{
 kvm_mmu_update_parents_unsync(sp);
 return 1;
}
