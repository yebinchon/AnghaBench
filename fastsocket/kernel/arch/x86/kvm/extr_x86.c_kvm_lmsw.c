
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long kvm_read_cr0_bits (struct kvm_vcpu*,int) ;
 int kvm_set_cr0 (struct kvm_vcpu*,unsigned long) ;

void kvm_lmsw(struct kvm_vcpu *vcpu, unsigned long msw)
{
 (void)kvm_set_cr0(vcpu, kvm_read_cr0_bits(vcpu, ~0x0eul) | (msw & 0x0f));
}
