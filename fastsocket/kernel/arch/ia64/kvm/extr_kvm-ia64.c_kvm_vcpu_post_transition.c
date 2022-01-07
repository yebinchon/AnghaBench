
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int host_rr6; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvm_purge_vmm_mapping (struct kvm_vcpu*) ;
 int vti_set_rr6 (int ) ;

__attribute__((used)) static void kvm_vcpu_post_transition(struct kvm_vcpu *vcpu)
{
 kvm_purge_vmm_mapping(vcpu);
 vti_set_rr6(vcpu->arch.host_rr6);
}
