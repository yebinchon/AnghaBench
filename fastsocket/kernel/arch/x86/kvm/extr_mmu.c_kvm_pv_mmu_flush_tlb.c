
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cr3; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvm_set_cr3 (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvm_pv_mmu_flush_tlb(struct kvm_vcpu *vcpu)
{
 (void)kvm_set_cr3(vcpu, vcpu->arch.cr3);
 return 1;
}
