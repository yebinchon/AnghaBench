
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int kvm; } ;


 int kvm_flush_remote_tlbs (int ) ;
 int kvm_mmu_flush_tlb (struct kvm_vcpu*) ;
 scalar_t__ need_remote_flush (int ,int ) ;

__attribute__((used)) static void mmu_pte_write_flush_tlb(struct kvm_vcpu *vcpu, u64 old, u64 new)
{
 if (need_remote_flush(old, new))
  kvm_flush_remote_tlbs(vcpu->kvm);
 else
  kvm_mmu_flush_tlb(vcpu);
}
