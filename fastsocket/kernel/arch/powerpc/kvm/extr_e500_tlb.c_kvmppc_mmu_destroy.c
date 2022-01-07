
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int* guest_tlb_size; } ;
struct kvm_vcpu {int dummy; } ;


 int _tlbil_all () ;
 int kvmppc_e500_shadow_release (struct kvmppc_vcpu_e500*,int,int) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

void kvmppc_mmu_destroy(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 int tlbsel, i;

 for (tlbsel = 0; tlbsel < 2; tlbsel++)
  for (i = 0; i < vcpu_e500->guest_tlb_size[tlbsel]; i++)
   kvmppc_e500_shadow_release(vcpu_e500, tlbsel, i);


 _tlbil_all();
}
