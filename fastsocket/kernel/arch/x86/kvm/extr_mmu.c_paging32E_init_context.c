
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int PT32E_ROOT_LEVEL ;
 int paging64_init_context_common (struct kvm_vcpu*,int ) ;
 int reset_rsvds_bits_mask (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int paging32E_init_context(struct kvm_vcpu *vcpu)
{
 reset_rsvds_bits_mask(vcpu, PT32E_ROOT_LEVEL);
 return paging64_init_context_common(vcpu, PT32E_ROOT_LEVEL);
}
