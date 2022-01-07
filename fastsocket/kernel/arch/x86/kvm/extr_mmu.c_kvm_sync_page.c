
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ root_level; scalar_t__ (* sync_page ) (struct kvm_vcpu*,struct kvm_mmu_page*) ;} ;
struct TYPE_6__ {TYPE_2__ mmu; } ;
struct kvm_vcpu {int kvm; TYPE_3__ arch; } ;
struct TYPE_4__ {scalar_t__ glevels; } ;
struct kvm_mmu_page {int gfn; TYPE_1__ role; } ;


 int kvm_flush_remote_tlbs (int ) ;
 int kvm_mmu_flush_tlb (struct kvm_vcpu*) ;
 int kvm_mmu_zap_page (int ,struct kvm_mmu_page*) ;
 int kvm_unlink_unsync_page (int ,struct kvm_mmu_page*) ;
 scalar_t__ rmap_write_protect (int ,int ) ;
 scalar_t__ stub1 (struct kvm_vcpu*,struct kvm_mmu_page*) ;
 int trace_kvm_mmu_sync_page (struct kvm_mmu_page*) ;

__attribute__((used)) static int kvm_sync_page(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp)
{
 if (sp->role.glevels != vcpu->arch.mmu.root_level) {
  kvm_mmu_zap_page(vcpu->kvm, sp);
  return 1;
 }

 trace_kvm_mmu_sync_page(sp);
 if (rmap_write_protect(vcpu->kvm, sp->gfn))
  kvm_flush_remote_tlbs(vcpu->kvm);
 kvm_unlink_unsync_page(vcpu->kvm, sp);
 if (vcpu->arch.mmu.sync_page(vcpu, sp)) {
  kvm_mmu_zap_page(vcpu->kvm, sp);
  return 1;
 }

 kvm_mmu_flush_tlb(vcpu);
 return 0;
}
